import 'dart:async';
import 'dart:math';
import 'dart:typed_data';

import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:nearby_connections/nearby_connections.dart';
import 'package:radio_set/repository/transmit/nearby_transmit_repository.dart';
import 'package:sound_stream/sound_stream.dart';

enum Command {
  start,
  stop,
  change,
}

class MainPage extends StatefulWidget {
  const MainPage({
    super.key,
  });

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with SingleTickerProviderStateMixin, WidgetsBindingObserver {
  RecorderStream _recorder = RecorderStream();
  PlayerStream _player = PlayerStream();

  List<Uint8List> _micChunks = [];
  bool _isRecording = false;
  bool _isPlaying = false;

  StreamSubscription? _recorderStatus;
  StreamSubscription? _playerStatus;
  StreamSubscription? _audioStream;

  final String userName = Random().nextInt(10000).toString();
  final Strategy strategy = Strategy.P2P_STAR;
  Map<String, ConnectionInfo> endpointMap = Map();

  String? tempFileUri; //reference to the file currently being transferred
  Map<int, String> map = Map(); //store filename mapped to corresponding payloadId

  @override
  void initState() {
    super.initState();
    initPlugin();
  }

  @override
  void dispose() {
    _recorderStatus?.cancel();
    _playerStatus?.cancel();
    _audioStream?.cancel();

    super.dispose();
  }

  final repository = NearbyTransmitRepository();

  Future<void> start() async {
    await repository.start();

    repository.eventsStream.listen((event) {
      print(event.device.id);
      print(event.device.name);
      showSnackbar('${event} ${event.device.name}');
    });
  }

  Future<void> stop() async {
    await repository.stop();
  }

  Future<void> accept(String id) async {
    try {
      print('accept');
      final r = await Nearby().acceptConnection(
        id,
        onPayLoadRecieved: (endpointId, payload) {
          // called whenever a payload is recieved.
          print('pd receive');
          if (payload.bytes != null) {
            _micChunks.add(payload.bytes!);
          }
        },
        onPayloadTransferUpdate: (endpointId, payloadTransferUpdate) {
          print('pd receive');

          // gives status of a payload
          // e.g success/failure/in_progress
          // bytes transferred and total bytes etc
        },
      );
      print(r);
    } catch (ex) {
      print(ex);
    }
  }

  void send() async {
    for (final chunk in _micChunks) {
      await Nearby().sendBytesPayload('radio', chunk);
    }
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlugin() async {
    _recorderStatus = _recorder.status.listen((status) {
      if (mounted)
        setState(() {
          _isRecording = status == SoundStreamStatus.Playing;
        });
    });

    _audioStream = _recorder.audioStream.listen((data) {
      if (_isPlaying) {
        _player.writeChunk(data);
      } else {
        _micChunks.add(data);
      }
    });

    _playerStatus = _player.status.listen((status) {
      if (mounted)
        setState(() {
          _isPlaying = status == SoundStreamStatus.Playing;
        });
    });

    await Future.wait([
      _recorder.initialize(),
      _player.initialize(),
    ]);
  }

  final player = AudioPlayer();

  void _play() async {
    await _player.start();

    if (_micChunks.isNotEmpty) {
      for (var chunk in _micChunks) {
        await _player.writeChunk(chunk);
      }
      _micChunks.clear();
    }
  }

  void showSnackbar(dynamic a) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(a.toString()),
    ));
  }

  /// Called upon Connection request (on both devices)
  /// Both need to accept connection to start sending/receiving
  void onConnectionInit(String id, ConnectionInfo info) {
    showModalBottomSheet(
      context: context,
      builder: (builder) {
        return Center(
          child: Column(
            children: <Widget>[
              Text("id: " + id),
              Text("Token: " + info.authenticationToken),
              Text("Name" + info.endpointName),
              Text("Incoming: " + info.isIncomingConnection.toString()),
              ElevatedButton(
                child: Text("Accept Connection"),
                onPressed: () {
                  Navigator.pop(context);
                  setState(() {
                    endpointMap[id] = info;
                  });
                  Nearby().acceptConnection(
                    id,
                    onPayLoadRecieved: (endid, payload) async {
                      if (payload.type == PayloadType.BYTES) {
                        print('pd');
                        if (payload.bytes != null) {
                          _micChunks.add(payload.bytes!);
                        }
                      } else if (payload.type == PayloadType.FILE) {
                        showSnackbar(endid + ": File transfer started");
                        tempFileUri = payload.uri;
                      }
                    },
                    onPayloadTransferUpdate: (endid, payloadTransferUpdate) {
                      print('pd succ');
                    },
                  );
                },
              ),
              ElevatedButton(
                child: Text("Reject Connection"),
                onPressed: () async {
                  Navigator.pop(context);
                  try {
                    await Nearby().rejectConnection(id);
                  } catch (e) {
                    showSnackbar(e);
                  }
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        IconButton(
          iconSize: 55.0,
          icon: Icon(_isRecording ? Icons.mic_off : Icons.mic),
          onPressed: _isRecording ? _recorder.stop : _recorder.start,
        ),
        IconButton(
          iconSize: 55.0,
          icon: Icon(_isPlaying ? Icons.pause : Icons.play_arrow),
          onPressed: _isPlaying ? _player.stop : _play,
        ),
        Divider(),
        Text("User Name: " + userName),
        Wrap(
          children: <Widget>[
            ElevatedButton(
              child: Text("Start Advertising"),
              onPressed: () async {
                start();
                // try {
                //   bool a = await Nearby().startAdvertising(
                //     userName,
                //     strategy,
                //     onConnectionInitiated: onConnectionInit,
                //     onConnectionResult: (id, status) {
                //       showSnackbar(status);
                //     },
                //     onDisconnected: (id) {
                //       showSnackbar("Disconnected: ${endpointMap[id]!.endpointName}, id $id");
                //       setState(() {
                //         endpointMap.remove(id);
                //       });
                //     },
                //   );
                //   showSnackbar("ADVERTISING: " + a.toString());
                // } catch (exception) {
                //   showSnackbar(exception);
                // }
              },
            ),
            ElevatedButton(
              child: Text("Stop Advertising"),
              onPressed: () async {
                stop();
                // await Nearby().stopAdvertising();
              },
            ),
          ],
        ),
        Wrap(
          children: <Widget>[
            ElevatedButton(
              child: Text("Start Discovery"),
              onPressed: () async {
                try {
                  bool a = await Nearby().startDiscovery(
                    userName,
                    strategy,
                    onEndpointFound: (id, name, serviceId) {
                      // show sheet automatically to request connection
                      showModalBottomSheet(
                        context: context,
                        builder: (builder) {
                          return Center(
                            child: Column(
                              children: <Widget>[
                                Text("id: " + id),
                                Text("Name: " + name),
                                Text("ServiceId: " + serviceId),
                                ElevatedButton(
                                  child: Text("Request Connection"),
                                  onPressed: () {
                                    Navigator.pop(context);
                                    Nearby().requestConnection(
                                      userName,
                                      id,
                                      onConnectionInitiated: (id, info) {
                                        onConnectionInit(id, info);
                                      },
                                      onConnectionResult: (id, status) {
                                        showSnackbar(status);
                                      },
                                      onDisconnected: (id) {
                                        setState(() {
                                          endpointMap.remove(id);
                                        });
                                        showSnackbar("Disconnected from: ${endpointMap[id]!.endpointName}, id $id");
                                      },
                                    );
                                  },
                                ),
                              ],
                            ),
                          );
                        },
                      );
                    },
                    onEndpointLost: (id) {
                      showSnackbar("Lost discovered Endpoint: ${endpointMap[id]!.endpointName}, id $id");
                    },
                  );
                  showSnackbar("DISCOVERING: " + a.toString());
                } catch (e) {
                  showSnackbar(e);
                }
              },
            ),
            ElevatedButton(
              child: Text("Stop Discovery"),
              onPressed: () async {
                await Nearby().stopDiscovery();
              },
            ),
          ],
        ),
        Text("Number of connected devices: ${endpointMap.length}"),
        ElevatedButton(
          child: Text("Stop All Endpoints"),
          onPressed: () async {
            await Nearby().stopAllEndpoints();
            setState(() {
              endpointMap.clear();
            });
          },
        ),
        Divider(),
        Text(
          "Sending Data",
        ),
        ElevatedButton(
          child: Text("Send Random Bytes Payload"),
          onPressed: () async {
            for (final chunk in _micChunks) {
              await repository.transmit(chunk);
            }
          },
        ),
        ElevatedButton(child: Text("Send File Payload"), onPressed: () async {}),
        ElevatedButton(
          child: Text("Print file names."),
          onPressed: () async {},
        ),
      ],
    );
  }
}
