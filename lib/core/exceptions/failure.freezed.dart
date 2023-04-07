// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure<T> {
  ExceptionType<T> get exception => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $FailureCopyWith<T, Failure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<T, $Res> {
  factory $FailureCopyWith(Failure<T> value, $Res Function(Failure<T>) then) =
      _$FailureCopyWithImpl<T, $Res, Failure<T>>;
  @useResult
  $Res call({ExceptionType<T> exception});

  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class _$FailureCopyWithImpl<T, $Res, $Val extends Failure<T>>
    implements $FailureCopyWith<T, $Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_value.copyWith(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExceptionTypeCopyWith<T, $Res> get exception {
    return $ExceptionTypeCopyWith<T, $Res>(_value.exception, (value) {
      return _then(_value.copyWith(exception: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ServerFailureCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$ServerFailureCopyWith(
          _$ServerFailure<T> value, $Res Function(_$ServerFailure<T>) then) =
      __$$ServerFailureCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$ServerFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$ServerFailure<T>>
    implements _$$ServerFailureCopyWith<T, $Res> {
  __$$ServerFailureCopyWithImpl(
      _$ServerFailure<T> _value, $Res Function(_$ServerFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$ServerFailure<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$ServerFailure<T>
    with DiagnosticableTreeMixin
    implements ServerFailure<T> {
  const _$ServerFailure({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure<$T>.serverFailure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure<$T>.serverFailure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ServerFailure<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ServerFailureCopyWith<T, _$ServerFailure<T>> get copyWith =>
      __$$ServerFailureCopyWithImpl<T, _$ServerFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return serverFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return serverFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return serverFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return serverFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (serverFailure != null) {
      return serverFailure(this);
    }
    return orElse();
  }
}

abstract class ServerFailure<T> implements Failure<T> {
  const factory ServerFailure({required final ExceptionType<T> exception}) =
      _$ServerFailure<T>;

  @override
  ExceptionType<T> get exception;
  @override
  @JsonKey(ignore: true)
  _$$ServerFailureCopyWith<T, _$ServerFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CacheFailureCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$CacheFailureCopyWith(
          _$CacheFailure<T> value, $Res Function(_$CacheFailure<T>) then) =
      __$$CacheFailureCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$CacheFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$CacheFailure<T>>
    implements _$$CacheFailureCopyWith<T, $Res> {
  __$$CacheFailureCopyWithImpl(
      _$CacheFailure<T> _value, $Res Function(_$CacheFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$CacheFailure<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$CacheFailure<T>
    with DiagnosticableTreeMixin
    implements CacheFailure<T> {
  const _$CacheFailure({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure<$T>.cacheFailure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure<$T>.cacheFailure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CacheFailure<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CacheFailureCopyWith<T, _$CacheFailure<T>> get copyWith =>
      __$$CacheFailureCopyWithImpl<T, _$CacheFailure<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return cacheFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return cacheFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return cacheFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return cacheFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (cacheFailure != null) {
      return cacheFailure(this);
    }
    return orElse();
  }
}

abstract class CacheFailure<T> implements Failure<T> {
  const factory CacheFailure({required final ExceptionType<T> exception}) =
      _$CacheFailure<T>;

  @override
  ExceptionType<T> get exception;
  @override
  @JsonKey(ignore: true)
  _$$CacheFailureCopyWith<T, _$CacheFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlatformsFailureCopyWith<T, $Res>
    implements $FailureCopyWith<T, $Res> {
  factory _$$PlatformsFailureCopyWith(_$PlatformsFailure<T> value,
          $Res Function(_$PlatformsFailure<T>) then) =
      __$$PlatformsFailureCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({ExceptionType<T> exception});

  @override
  $ExceptionTypeCopyWith<T, $Res> get exception;
}

/// @nodoc
class __$$PlatformsFailureCopyWithImpl<T, $Res>
    extends _$FailureCopyWithImpl<T, $Res, _$PlatformsFailure<T>>
    implements _$$PlatformsFailureCopyWith<T, $Res> {
  __$$PlatformsFailureCopyWithImpl(
      _$PlatformsFailure<T> _value, $Res Function(_$PlatformsFailure<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? exception = null,
  }) {
    return _then(_$PlatformsFailure<T>(
      exception: null == exception
          ? _value.exception
          : exception // ignore: cast_nullable_to_non_nullable
              as ExceptionType<T>,
    ));
  }
}

/// @nodoc

class _$PlatformsFailure<T>
    with DiagnosticableTreeMixin
    implements PlatformsFailure<T> {
  const _$PlatformsFailure({required this.exception});

  @override
  final ExceptionType<T> exception;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Failure<$T>.platformsFailure(exception: $exception)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Failure<$T>.platformsFailure'))
      ..add(DiagnosticsProperty('exception', exception));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlatformsFailure<T> &&
            (identical(other.exception, exception) ||
                other.exception == exception));
  }

  @override
  int get hashCode => Object.hash(runtimeType, exception);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PlatformsFailureCopyWith<T, _$PlatformsFailure<T>> get copyWith =>
      __$$PlatformsFailureCopyWithImpl<T, _$PlatformsFailure<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExceptionType<T> exception) serverFailure,
    required TResult Function(ExceptionType<T> exception) cacheFailure,
    required TResult Function(ExceptionType<T> exception) platformsFailure,
  }) {
    return platformsFailure(exception);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExceptionType<T> exception)? serverFailure,
    TResult? Function(ExceptionType<T> exception)? cacheFailure,
    TResult? Function(ExceptionType<T> exception)? platformsFailure,
  }) {
    return platformsFailure?.call(exception);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExceptionType<T> exception)? serverFailure,
    TResult Function(ExceptionType<T> exception)? cacheFailure,
    TResult Function(ExceptionType<T> exception)? platformsFailure,
    required TResult orElse(),
  }) {
    if (platformsFailure != null) {
      return platformsFailure(exception);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ServerFailure<T> value) serverFailure,
    required TResult Function(CacheFailure<T> value) cacheFailure,
    required TResult Function(PlatformsFailure<T> value) platformsFailure,
  }) {
    return platformsFailure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ServerFailure<T> value)? serverFailure,
    TResult? Function(CacheFailure<T> value)? cacheFailure,
    TResult? Function(PlatformsFailure<T> value)? platformsFailure,
  }) {
    return platformsFailure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ServerFailure<T> value)? serverFailure,
    TResult Function(CacheFailure<T> value)? cacheFailure,
    TResult Function(PlatformsFailure<T> value)? platformsFailure,
    required TResult orElse(),
  }) {
    if (platformsFailure != null) {
      return platformsFailure(this);
    }
    return orElse();
  }
}

abstract class PlatformsFailure<T> implements Failure<T> {
  const factory PlatformsFailure({required final ExceptionType<T> exception}) =
      _$PlatformsFailure<T>;

  @override
  ExceptionType<T> get exception;
  @override
  @JsonKey(ignore: true)
  _$$PlatformsFailureCopyWith<T, _$PlatformsFailure<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
