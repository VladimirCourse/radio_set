// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'device_event_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeviceEventModel {
  DeviceModel get device => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DeviceModel device) connected,
    required TResult Function(DeviceModel device) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Connected value) connected,
    required TResult Function(_Disconnected value) disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeviceEventModelCopyWith<DeviceEventModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeviceEventModelCopyWith<$Res> {
  factory $DeviceEventModelCopyWith(
          DeviceEventModel value, $Res Function(DeviceEventModel) then) =
      _$DeviceEventModelCopyWithImpl<$Res, DeviceEventModel>;
  @useResult
  $Res call({DeviceModel device});

  $DeviceModelCopyWith<$Res> get device;
}

/// @nodoc
class _$DeviceEventModelCopyWithImpl<$Res, $Val extends DeviceEventModel>
    implements $DeviceEventModelCopyWith<$Res> {
  _$DeviceEventModelCopyWithImpl(this._value, this._then);

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

  @override
  @pragma('vm:prefer-inline')
  $DeviceModelCopyWith<$Res> get device {
    return $DeviceModelCopyWith<$Res>(_value.device, (value) {
      return _then(_value.copyWith(device: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ConnectedCopyWith<$Res>
    implements $DeviceEventModelCopyWith<$Res> {
  factory _$$_ConnectedCopyWith(
          _$_Connected value, $Res Function(_$_Connected) then) =
      __$$_ConnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});

  @override
  $DeviceModelCopyWith<$Res> get device;
}

/// @nodoc
class __$$_ConnectedCopyWithImpl<$Res>
    extends _$DeviceEventModelCopyWithImpl<$Res, _$_Connected>
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
    return 'DeviceEventModel.connected(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceEventModel.connected'))
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
    required TResult Function(DeviceModel device) disconnected,
  }) {
    return connected(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? disconnected,
  }) {
    return connected?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? disconnected,
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
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return connected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
  }) {
    return connected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (connected != null) {
      return connected(this);
    }
    return orElse();
  }
}

abstract class _Connected implements DeviceEventModel {
  const factory _Connected({required final DeviceModel device}) = _$_Connected;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectedCopyWith<_$_Connected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DisconnectedCopyWith<$Res>
    implements $DeviceEventModelCopyWith<$Res> {
  factory _$$_DisconnectedCopyWith(
          _$_Disconnected value, $Res Function(_$_Disconnected) then) =
      __$$_DisconnectedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeviceModel device});

  @override
  $DeviceModelCopyWith<$Res> get device;
}

/// @nodoc
class __$$_DisconnectedCopyWithImpl<$Res>
    extends _$DeviceEventModelCopyWithImpl<$Res, _$_Disconnected>
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
    return 'DeviceEventModel.disconnected(device: $device)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'DeviceEventModel.disconnected'))
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
    required TResult Function(DeviceModel device) disconnected,
  }) {
    return disconnected(device);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DeviceModel device)? connected,
    TResult? Function(DeviceModel device)? disconnected,
  }) {
    return disconnected?.call(device);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DeviceModel device)? connected,
    TResult Function(DeviceModel device)? disconnected,
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
    required TResult Function(_Disconnected value) disconnected,
  }) {
    return disconnected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Connected value)? connected,
    TResult? Function(_Disconnected value)? disconnected,
  }) {
    return disconnected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Connected value)? connected,
    TResult Function(_Disconnected value)? disconnected,
    required TResult orElse(),
  }) {
    if (disconnected != null) {
      return disconnected(this);
    }
    return orElse();
  }
}

abstract class _Disconnected implements DeviceEventModel {
  const factory _Disconnected({required final DeviceModel device}) =
      _$_Disconnected;

  @override
  DeviceModel get device;
  @override
  @JsonKey(ignore: true)
  _$$_DisconnectedCopyWith<_$_Disconnected> get copyWith =>
      throw _privateConstructorUsedError;
}
