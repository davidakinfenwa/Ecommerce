// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'exception_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ExceptionType<T> {
  int? get responseNo => throw _privateConstructorUsedError;
  bool get response => throw _privateConstructorUsedError;
  ExceptionCode get code => throw _privateConstructorUsedError;
  T get message => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExceptionTypeCopyWith<T, ExceptionType<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExceptionTypeCopyWith<T, $Res> {
  factory $ExceptionTypeCopyWith(
          ExceptionType<T> value, $Res Function(ExceptionType<T>) then) =
      _$ExceptionTypeCopyWithImpl<T, $Res, ExceptionType<T>>;
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class _$ExceptionTypeCopyWithImpl<T, $Res, $Val extends ExceptionType<T>>
    implements $ExceptionTypeCopyWith<T, $Res> {
  _$ExceptionTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ServerExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$ServerExceptionCopyWith(_$ServerException<T> value,
          $Res Function(_$ServerException<T>) then) =
      __$$ServerExceptionCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$ServerExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$ServerException<T>>
    implements _$$ServerExceptionCopyWith<T, $Res> {
  __$$ServerExceptionCopyWithImpl(
      _$ServerException<T> _value, $Res Function(_$ServerException<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$ServerException<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$ServerException<T>
    with DiagnosticableTreeMixin
    implements ServerException<T> {
  const _$ServerException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.serverException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.serverException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerException<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerExceptionCopyWith<T, _$ServerException<T>> get copyWith =>
      __$$ServerExceptionCopyWithImpl<T, _$ServerException<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return serverException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return serverException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return serverException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return serverException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (serverException != null) {
      return serverException(this);
    }
    return orElse();
  }
}

abstract class ServerException<T> implements ExceptionType<T> {
  const factory ServerException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$ServerException<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;
  @override
  @JsonKey(ignore: true)
  _$$ServerExceptionCopyWith<T, _$ServerException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$CacheExceptionCopyWith(
          _$CacheException<T> value, $Res Function(_$CacheException<T>) then) =
      __$$CacheExceptionCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$CacheExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$CacheException<T>>
    implements _$$CacheExceptionCopyWith<T, $Res> {
  __$$CacheExceptionCopyWithImpl(
      _$CacheException<T> _value, $Res Function(_$CacheException<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$CacheException<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$CacheException<T>
    with DiagnosticableTreeMixin
    implements CacheException<T> {
  const _$CacheException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.cacheException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.cacheException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheException<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheExceptionCopyWith<T, _$CacheException<T>> get copyWith =>
      __$$CacheExceptionCopyWithImpl<T, _$CacheException<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return cacheException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return cacheException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return cacheException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return cacheException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (cacheException != null) {
      return cacheException(this);
    }
    return orElse();
  }
}

abstract class CacheException<T> implements ExceptionType<T> {
  const factory CacheException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$CacheException<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;
  @override
  @JsonKey(ignore: true)
  _$$CacheExceptionCopyWith<T, _$CacheException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformsExceptionCopyWith<T, $Res>
    implements $ExceptionTypeCopyWith<T, $Res> {
  factory _$$PlatformsExceptionCopyWith(_$PlatformsException<T> value,
          $Res Function(_$PlatformsException<T>) then) =
      __$$PlatformsExceptionCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({int? responseNo, bool response, ExceptionCode code, T message});
}

/// @nodoc
class __$$PlatformsExceptionCopyWithImpl<T, $Res>
    extends _$ExceptionTypeCopyWithImpl<T, $Res, _$PlatformsException<T>>
    implements _$$PlatformsExceptionCopyWith<T, $Res> {
  __$$PlatformsExceptionCopyWithImpl(_$PlatformsException<T> _value,
      $Res Function(_$PlatformsException<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? responseNo = freezed,
    Object? response = null,
    Object? code = null,
    Object? message = null,
  }) {
    return _then(_$PlatformsException<T>(
      responseNo: freezed == responseNo
          ? _value.responseNo
          : responseNo // ignore: cast_nullable_to_non_nullable
              as int?,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as bool,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as ExceptionCode,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$PlatformsException<T>
    with DiagnosticableTreeMixin
    implements PlatformsException<T> {
  const _$PlatformsException(
      {this.responseNo,
      this.response = true,
      required this.code,
      required this.message});

  @override
  final int? responseNo;
  @override
  @JsonKey()
  final bool response;
  @override
  final ExceptionCode code;
  @override
  final T message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExceptionType<$T>.platformsException(responseNo: $responseNo, response: $response, code: $code, message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExceptionType<$T>.platformsException'))
      ..add(DiagnosticsProperty('responseNo', responseNo))
      ..add(DiagnosticsProperty('response', response))
      ..add(DiagnosticsProperty('code', code))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformsException<T> &&
            (identical(other.responseNo, responseNo) ||
                other.responseNo == responseNo) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.code, code) || other.code == code) &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, responseNo, response, code,
      const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformsExceptionCopyWith<T, _$PlatformsException<T>> get copyWith =>
      __$$PlatformsExceptionCopyWithImpl<T, _$PlatformsException<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        serverException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        cacheException,
    required TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)
        platformsException,
  }) {
    return platformsException(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult? Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
  }) {
    return platformsException?.call(responseNo, response, code, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        serverException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        cacheException,
    TResult Function(
            int? responseNo, bool response, ExceptionCode code, T message)?
        platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(responseNo, response, code, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerException<T> value) serverException,
    required TResult Function(CacheException<T> value) cacheException,
    required TResult Function(PlatformsException<T> value) platformsException,
  }) {
    return platformsException(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerException<T> value)? serverException,
    TResult? Function(CacheException<T> value)? cacheException,
    TResult? Function(PlatformsException<T> value)? platformsException,
  }) {
    return platformsException?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerException<T> value)? serverException,
    TResult Function(CacheException<T> value)? cacheException,
    TResult Function(PlatformsException<T> value)? platformsException,
    required TResult orElse(),
  }) {
    if (platformsException != null) {
      return platformsException(this);
    }
    return orElse();
  }
}

abstract class PlatformsException<T> implements ExceptionType<T> {
  const factory PlatformsException(
      {final int? responseNo,
      final bool response,
      required final ExceptionCode code,
      required final T message}) = _$PlatformsException<T>;

  @override
  int? get responseNo;
  @override
  bool get response;
  @override
  ExceptionCode get code;
  @override
  T get message;
  @override
  @JsonKey(ignore: true)
  _$$PlatformsExceptionCopyWith<T, _$PlatformsException<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
