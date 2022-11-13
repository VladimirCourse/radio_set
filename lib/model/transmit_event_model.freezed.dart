// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transmit_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TransmitEventModel {
  DeviceModel get device => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) found,
    required TResult Function(DeviceModel device) disconnected,
    required TResult Function(DeviceModel device, Uint8List data) dataReceive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? found,
    TResult? Function(DeviceModel device)? disconnected,
    TResult? Function(DeviceModel device, Uint8List data)? dataReceive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? found,
    TResult Function(DeviceModel device)? disconnected,
    TResult Function(DeviceModel device, Uint8List data)? dataReceive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Found value) found,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_DataReceive value) dataReceive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Found value)? found,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_DataReceive value)? dataReceive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Found value)? found,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_DataReceive value)? dataReceive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TransmitEventModelCopyWith<TransmitEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransmitEventModelCopyWith<$Res> {
  factory $TransmitEventModelCopyWith(
          TransmitEventModel value, $Res Function(TransmitEventModel) then) =
      _$TransmitEventModelCopyWithImpl<$Res, TransmitEventModel>;
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class _$TransmitEventModelCopyWithImpl<$Res, $Val extends TransmitEventModel>
    implements $TransmitEventModelCopyWith<$Res> {
  _$TransmitEventModelCopyWithImpl(this._value, this._then);

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
abstract class _$$_ConnectedCopyWith<$Res>
    implements $TransmitEventModelCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$TransmitEventModelCopyWithImpl<$Res, _$_Connected>
    implements _$$_ConnectedCopyWith<$Res> {
  __$$_ConnectedCopyWithImpl(
      _$_Connected _value, $Res Function(_$_Connected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_Connected(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc

class _$_Connected with DiagnosticableTreeMixin implements _Connected {
  const _$_Connected({required this.device});

  @override
  final DeviceModel device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransmitEventModel.connected(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransmitEventModel.connected'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Connected &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      __$$_ConnectedCopyWithImpl<_$_Connected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) found,
    required TResult Function(DeviceModel device) disconnected,
    required TResult Function(DeviceModel device, Uint8List data) dataReceive,
  }) {
    return connected(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? found,
    TResult? Function(DeviceModel device)? disconnected,
    TResult? Function(DeviceModel device, Uint8List data)? dataReceive,
  }) {
    return connected?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? found,
    TResult Function(DeviceModel device)? disconnected,
    TResult Function(DeviceModel device, Uint8List data)? dataReceive,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Found value) found,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_DataReceive value) dataReceive,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Found value)? found,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_DataReceive value)? dataReceive,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Found value)? found,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_DataReceive value)? dataReceive,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements TransmitEventModel {
  const factory _Connected({required final DeviceModel device}) = _$_Connected;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FoundCopyWith<$Res>
    implements $TransmitEventModelCopyWith<$Res> {
  factory _$$_FoundCopyWith(_$_Found value, $Res Function(_$_Found) then) =
      __$$_FoundCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class __$$_FoundCopyWithImpl<$Res>
    extends _$TransmitEventModelCopyWithImpl<$Res, _$_Found>
    implements _$$_FoundCopyWith<$Res> {
  __$$_FoundCopyWithImpl(_$_Found _value, $Res Function(_$_Found) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_Found(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc

class _$_Found with DiagnosticableTreeMixin implements _Found {
  const _$_Found({required this.device});

  @override
  final DeviceModel device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransmitEventModel.found(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransmitEventModel.found'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Found &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FoundCopyWith<_$_Found> get copyWith =>
      __$$_FoundCopyWithImpl<_$_Found>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) found,
    required TResult Function(DeviceModel device) disconnected,
    required TResult Function(DeviceModel device, Uint8List data) dataReceive,
  }) {
    return found(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? found,
    TResult? Function(DeviceModel device)? disconnected,
    TResult? Function(DeviceModel device, Uint8List data)? dataReceive,
  }) {
    return found?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? found,
    TResult Function(DeviceModel device)? disconnected,
    TResult Function(DeviceModel device, Uint8List data)? dataReceive,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Found value) found,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_DataReceive value) dataReceive,
  }) {
    return found(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Found value)? found,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_DataReceive value)? dataReceive,
  }) {
    return found?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Found value)? found,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_DataReceive value)? dataReceive,
    required TResult orElse(),
  }) {
    if (found != null) {
      return found(this);
    }
    return orElse();
  }
}

abstract class _Found implements TransmitEventModel {
  const factory _Found({required final DeviceModel device}) = _$_Found;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_FoundCopyWith<_$_Found> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res>
    implements $TransmitEventModelCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$TransmitEventModelCopyWithImpl<$Res, _$_Disconnected>
    implements _$$_DisconnectedCopyWith<$Res> {
  __$$_DisconnectedCopyWithImpl(
      _$_Disconnected _value, $Res Function(_$_Disconnected) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
  }) {
    return _then(_$_Disconnected(
      device: null == device
          ? _value.device
          : device // ignore: cast_nullable_to_non_nullable
              as DeviceModel,
    ));
  }
}

/// @nodoc

class _$_Disconnected with DiagnosticableTreeMixin implements _Disconnected {
  const _$_Disconnected({required this.device});

  @override
  final DeviceModel device;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransmitEventModel.disconnected(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransmitEventModel.disconnected'))
      ..add(DiagnosticsProperty('device', device));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Disconnected &&
            (identical(other.device, device) || other.device == device));
  }

  @override
  int get hashCode => Object.hash(runtimeType, device);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DisconnectedCopyWith<_$_Disconnected> get copyWith =>
      __$$_DisconnectedCopyWithImpl<_$_Disconnected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) found,
    required TResult Function(DeviceModel device) disconnected,
    required TResult Function(DeviceModel device, Uint8List data) dataReceive,
  }) {
    return disconnected(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? found,
    TResult? Function(DeviceModel device)? disconnected,
    TResult? Function(DeviceModel device, Uint8List data)? dataReceive,
  }) {
    return disconnected?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? found,
    TResult Function(DeviceModel device)? disconnected,
    TResult Function(DeviceModel device, Uint8List data)? dataReceive,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(device);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Found value) found,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_DataReceive value) dataReceive,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Found value)? found,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_DataReceive value)? dataReceive,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Found value)? found,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_DataReceive value)? dataReceive,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements TransmitEventModel {
  const factory _Disconnected({required final DeviceModel device}) =
      _$_Disconnected;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_DisconnectedCopyWith<_$_Disconnected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DataReceiveCopyWith<$Res>
    implements $TransmitEventModelCopyWith<$Res> {
  factory _$$_DataReceiveCopyWith(
          _$_DataReceive value, $Res Function(_$_DataReceive) then) =
      __$$_DataReceiveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device, Uint8List data});
}

/// @nodoc
class __$$_DataReceiveCopyWithImpl<$Res>
    extends _$TransmitEventModelCopyWithImpl<$Res, _$_DataReceive>
    implements _$$_DataReceiveCopyWith<$Res> {
  __$$_DataReceiveCopyWithImpl(
      _$_DataReceive _value, $Res Function(_$_DataReceive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? device = null,
    Object? data = null,
  }) {
    return _then(_$_DataReceive(
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

class _$_DataReceive with DiagnosticableTreeMixin implements _DataReceive {
  const _$_DataReceive({required this.device, required this.data});

  @override
  final DeviceModel device;
  @override
  final Uint8List data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'TransmitEventModel.dataReceive(device: $device, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'TransmitEventModel.dataReceive'))
      ..add(DiagnosticsProperty('device', device))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DataReceive &&
            (identical(other.device, device) || other.device == device) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, device, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataReceiveCopyWith<_$_DataReceive> get copyWith =>
      __$$_DataReceiveCopyWithImpl<_$_DataReceive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) found,
    required TResult Function(DeviceModel device) disconnected,
    required TResult Function(DeviceModel device, Uint8List data) dataReceive,
  }) {
    return dataReceive(device, data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? found,
    TResult? Function(DeviceModel device)? disconnected,
    TResult? Function(DeviceModel device, Uint8List data)? dataReceive,
  }) {
    return dataReceive?.call(device, data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? found,
    TResult Function(DeviceModel device)? disconnected,
    TResult Function(DeviceModel device, Uint8List data)? dataReceive,
    required TResult orElse(),
  }) {
    if (dataReceive != null) {
      return dataReceive(device, data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Found value) found,
    required TResult Function(_Disconnected value) disconnected,
    required TResult Function(_DataReceive value) dataReceive,
  }) {
    return dataReceive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Found value)? found,
    TResult? Function(_Disconnected value)? disconnected,
    TResult? Function(_DataReceive value)? dataReceive,
  }) {
    return dataReceive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Found value)? found,
    TResult Function(_Disconnected value)? disconnected,
    TResult Function(_DataReceive value)? dataReceive,
    required TResult orElse(),
  }) {
    if (dataReceive != null) {
      return dataReceive(this);
    }
    return orElse();
  }
}

abstract class _DataReceive implements TransmitEventModel {
  const factory _DataReceive(
      {required final DeviceModel device,
      required final Uint8List data}) = _$_DataReceive;

  @override
  DeviceModel get device;
  Uint8List get data;
  @override
  @JsonKey(ignore: true)
  _$$_DataReceiveCopyWith<_$_DataReceive> get copyWith =>
      throw _privateConstructorUsedError;
}
