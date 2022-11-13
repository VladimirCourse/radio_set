// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'data_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DataEventModel {
  DeviceModel get device => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) startAudio,
    required TResult Function(DeviceModel device, Uint8List data) audioData,
    required TResult Function(DeviceModel device) stopAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? startAudio,
    TResult? Function(DeviceModel device, Uint8List data)? audioData,
    TResult? Function(DeviceModel device)? stopAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? startAudio,
    TResult Function(DeviceModel device, Uint8List data)? audioData,
    TResult Function(DeviceModel device)? stopAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAudio value) startAudio,
    required TResult Function(_AudioData value) audioData,
    required TResult Function(_StopAudio value) stopAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAudio value)? startAudio,
    TResult? Function(_AudioData value)? audioData,
    TResult? Function(_StopAudio value)? stopAudio,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAudio value)? startAudio,
    TResult Function(_AudioData value)? audioData,
    TResult Function(_StopAudio value)? stopAudio,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DataEventModelCopyWith<DataEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DataEventModelCopyWith<$Res> {
  factory $DataEventModelCopyWith(
          DataEventModel value, $Res Function(DataEventModel) then) =
      _$DataEventModelCopyWithImpl<$Res, DataEventModel>;
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class _$DataEventModelCopyWithImpl<$Res, $Val extends DataEventModel>
    implements $DataEventModelCopyWith<$Res> {
  _$DataEventModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_value.copyWith(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StartAudioCopyWith<$Res>
    implements $DataEventModelCopyWith<$Res> {
  factory _$$_StartAudioCopyWith(
          _$_StartAudio value, $Res Function(_$_StartAudio) then) =
      __$$_StartAudioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class __$$_StartAudioCopyWithImpl<$Res>
    extends _$DataEventModelCopyWithImpl<$Res, _$_StartAudio>
    implements _$$_StartAudioCopyWith<$Res> {
  __$$_StartAudioCopyWithImpl(
      _$_StartAudio _value, $Res Function(_$_StartAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_StartAudio(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc

class _$_StartAudio with DiagnosticableTreeMixin implements _StartAudio {
  const _$_StartAudio({required this.device});

  @override
  final DeviceModel device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataEventModel.startAudio(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataEventModel.startAudio'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StartAudio &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartAudioCopyWith<_$_StartAudio> get copyWith =>
      __$$_StartAudioCopyWithImpl<_$_StartAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) startAudio,
    required TResult Function(DeviceModel device, Uint8List data) audioData,
    required TResult Function(DeviceModel device) stopAudio,
  }) {
    return startAudio(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? startAudio,
    TResult? Function(DeviceModel device, Uint8List data)? audioData,
    TResult? Function(DeviceModel device)? stopAudio,
  }) {
    return startAudio?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? startAudio,
    TResult Function(DeviceModel device, Uint8List data)? audioData,
    TResult Function(DeviceModel device)? stopAudio,
    required TResult orElse(),
  }) {
    if (startAudio != null) {
      return startAudio(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAudio value) startAudio,
    required TResult Function(_AudioData value) audioData,
    required TResult Function(_StopAudio value) stopAudio,
  }) {
    return startAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAudio value)? startAudio,
    TResult? Function(_AudioData value)? audioData,
    TResult? Function(_StopAudio value)? stopAudio,
  }) {
    return startAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAudio value)? startAudio,
    TResult Function(_AudioData value)? audioData,
    TResult Function(_StopAudio value)? stopAudio,
    required TResult orElse(),
  }) {
    if (startAudio != null) {
      return startAudio(this);
    }
    return orElse();
  }
}

abstract class _StartAudio implements DataEventModel {
  const factory _StartAudio({required final DeviceModel device}) =
      _$_StartAudio;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_StartAudioCopyWith<_$_StartAudio> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AudioDataCopyWith<$Res>
    implements $DataEventModelCopyWith<$Res> {
  factory _$$_AudioDataCopyWith(
          _$_AudioData value, $Res Function(_$_AudioData) then) =
      __$$_AudioDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device, Uint8List data});
}

/// @nodoc
class __$$_AudioDataCopyWithImpl<$Res>
    extends _$DataEventModelCopyWithImpl<$Res, _$_AudioData>
    implements _$$_AudioDataCopyWith<$Res> {
  __$$_AudioDataCopyWithImpl(
      _$_AudioData _value, $Res Function(_$_AudioData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? data = null,
  }) {
    return _then(_$_AudioData(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class _$_AudioData with DiagnosticableTreeMixin implements _AudioData {
  const _$_AudioData({required this.device, required this.data});

  @override
  final DeviceModel device;
  @override
  final Uint8List data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataEventModel.audioData(device: $device, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataEventModel.audioData'))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AudioData &&
            (identical(other.device, device) || other.device == device) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, device, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AudioDataCopyWith<_$_AudioData> get copyWith =>
      __$$_AudioDataCopyWithImpl<_$_AudioData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) startAudio,
    required TResult Function(DeviceModel device, Uint8List data) audioData,
    required TResult Function(DeviceModel device) stopAudio,
  }) {
    return audioData(device, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? startAudio,
    TResult? Function(DeviceModel device, Uint8List data)? audioData,
    TResult? Function(DeviceModel device)? stopAudio,
  }) {
    return audioData?.call(device, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? startAudio,
    TResult Function(DeviceModel device, Uint8List data)? audioData,
    TResult Function(DeviceModel device)? stopAudio,
    required TResult orElse(),
  }) {
    if (audioData != null) {
      return audioData(device, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAudio value) startAudio,
    required TResult Function(_AudioData value) audioData,
    required TResult Function(_StopAudio value) stopAudio,
  }) {
    return audioData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAudio value)? startAudio,
    TResult? Function(_AudioData value)? audioData,
    TResult? Function(_StopAudio value)? stopAudio,
  }) {
    return audioData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAudio value)? startAudio,
    TResult Function(_AudioData value)? audioData,
    TResult Function(_StopAudio value)? stopAudio,
    required TResult orElse(),
  }) {
    if (audioData != null) {
      return audioData(this);
    }
    return orElse();
  }
}

abstract class _AudioData implements DataEventModel {
  const factory _AudioData(
      {required final DeviceModel device,
      required final Uint8List data}) = _$_AudioData;

  @override
  DeviceModel get device;
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$_AudioDataCopyWith<_$_AudioData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StopAudioCopyWith<$Res>
    implements $DataEventModelCopyWith<$Res> {
  factory _$$_StopAudioCopyWith(
          _$_StopAudio value, $Res Function(_$_StopAudio) then) =
      __$$_StopAudioCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class __$$_StopAudioCopyWithImpl<$Res>
    extends _$DataEventModelCopyWithImpl<$Res, _$_StopAudio>
    implements _$$_StopAudioCopyWith<$Res> {
  __$$_StopAudioCopyWithImpl(
      _$_StopAudio _value, $Res Function(_$_StopAudio) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_StopAudio(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc

class _$_StopAudio with DiagnosticableTreeMixin implements _StopAudio {
  const _$_StopAudio({required this.device});

  @override
  final DeviceModel device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'DataEventModel.stopAudio(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DataEventModel.stopAudio'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StopAudio &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StopAudioCopyWith<_$_StopAudio> get copyWith =>
      __$$_StopAudioCopyWithImpl<_$_StopAudio>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) startAudio,
    required TResult Function(DeviceModel device, Uint8List data) audioData,
    required TResult Function(DeviceModel device) stopAudio,
  }) {
    return stopAudio(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? startAudio,
    TResult? Function(DeviceModel device, Uint8List data)? audioData,
    TResult? Function(DeviceModel device)? stopAudio,
  }) {
    return stopAudio?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? startAudio,
    TResult Function(DeviceModel device, Uint8List data)? audioData,
    TResult Function(DeviceModel device)? stopAudio,
    required TResult orElse(),
  }) {
    if (stopAudio != null) {
      return stopAudio(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StartAudio value) startAudio,
    required TResult Function(_AudioData value) audioData,
    required TResult Function(_StopAudio value) stopAudio,
  }) {
    return stopAudio(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_StartAudio value)? startAudio,
    TResult? Function(_AudioData value)? audioData,
    TResult? Function(_StopAudio value)? stopAudio,
  }) {
    return stopAudio?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_StartAudio value)? startAudio,
    TResult Function(_AudioData value)? audioData,
    TResult Function(_StopAudio value)? stopAudio,
    required TResult orElse(),
  }) {
    if (stopAudio != null) {
      return stopAudio(this);
    }
    return orElse();
  }
}

abstract class _StopAudio implements DataEventModel {
  const factory _StopAudio({required final DeviceModel device}) = _$_StopAudio;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_StopAudioCopyWith<_$_StopAudio> get copyWith =>
      throw _privateConstructorUsedError;
}
