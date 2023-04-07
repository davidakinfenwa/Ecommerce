// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bloc_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BlocState<F, T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(F failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(F failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<F, T> value)? initial,
    TResult? Function(Loading<F, T> value)? loading,
    TResult? Function(Success<F, T> value)? success,
    TResult? Function(Error<F, T> value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlocStateCopyWith<F, T, $Res> {
  factory $BlocStateCopyWith(
          BlocState<F, T> value, $Res Function(BlocState<F, T>) then) =
      _$BlocStateCopyWithImpl<F, T, $Res, BlocState<F, T>>;
}

/// @nodoc
class _$BlocStateCopyWithImpl<F, T, $Res, $Val extends BlocState<F, T>>
    implements $BlocStateCopyWith<F, T, $Res> {
  _$BlocStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialCopyWith<F, T, $Res> {
  factory _$$InitialCopyWith(
          _$Initial<F, T> value, $Res Function(_$Initial<F, T>) then) =
      __$$InitialCopyWithImpl<F, T, $Res>;
}

/// @nodoc
class __$$InitialCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res, _$Initial<F, T>>
    implements _$$InitialCopyWith<F, T, $Res> {
  __$$InitialCopyWithImpl(
      _$Initial<F, T> _value, $Res Function(_$Initial<F, T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Initial<F, T> with DiagnosticableTreeMixin implements Initial<F, T> {
  const _$Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlocState<$F, $T>.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Initial<F, T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(F failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(F failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<F, T> value)? initial,
    TResult? Function(Loading<F, T> value)? loading,
    TResult? Function(Success<F, T> value)? success,
    TResult? Function(Error<F, T> value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial<F, T> implements BlocState<F, T> {
  const factory Initial() = _$Initial<F, T>;
}

/// @nodoc
abstract class _$$LoadingCopyWith<F, T, $Res> {
  factory _$$LoadingCopyWith(
          _$Loading<F, T> value, $Res Function(_$Loading<F, T>) then) =
      __$$LoadingCopyWithImpl<F, T, $Res>;
}

/// @nodoc
class __$$LoadingCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res, _$Loading<F, T>>
    implements _$$LoadingCopyWith<F, T, $Res> {
  __$$LoadingCopyWithImpl(
      _$Loading<F, T> _value, $Res Function(_$Loading<F, T>) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Loading<F, T> with DiagnosticableTreeMixin implements Loading<F, T> {
  const _$Loading();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.loading()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'BlocState<$F, $T>.loading'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Loading<F, T>);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(F failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(F failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<F, T> value)? initial,
    TResult? Function(Loading<F, T> value)? loading,
    TResult? Function(Success<F, T> value)? success,
    TResult? Function(Error<F, T> value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading<F, T> implements BlocState<F, T> {
  const factory Loading() = _$Loading<F, T>;
}

/// @nodoc
abstract class _$$SuccessCopyWith<F, T, $Res> {
  factory _$$SuccessCopyWith(
          _$Success<F, T> value, $Res Function(_$Success<F, T>) then) =
      __$$SuccessCopyWithImpl<F, T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res, _$Success<F, T>>
    implements _$$SuccessCopyWith<F, T, $Res> {
  __$$SuccessCopyWithImpl(
      _$Success<F, T> _value, $Res Function(_$Success<F, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$Success<F, T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$Success<F, T> with DiagnosticableTreeMixin implements Success<F, T> {
  const _$Success({required this.data});

  @override
  final T data;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.success(data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlocState<$F, $T>.success'))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success<F, T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<F, T, _$Success<F, T>> get copyWith =>
      __$$SuccessCopyWithImpl<F, T, _$Success<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(F failure) error,
  }) {
    return success(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(F failure)? error,
  }) {
    return success?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<F, T> value)? initial,
    TResult? Function(Loading<F, T> value)? loading,
    TResult? Function(Success<F, T> value)? success,
    TResult? Function(Error<F, T> value)? error,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class Success<F, T> implements BlocState<F, T> {
  const factory Success({required final T data}) = _$Success<F, T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<F, T, _$Success<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorCopyWith<F, T, $Res> {
  factory _$$ErrorCopyWith(
          _$Error<F, T> value, $Res Function(_$Error<F, T>) then) =
      __$$ErrorCopyWithImpl<F, T, $Res>;
  @useResult
  $Res call({F failure});
}

/// @nodoc
class __$$ErrorCopyWithImpl<F, T, $Res>
    extends _$BlocStateCopyWithImpl<F, T, $Res, _$Error<F, T>>
    implements _$$ErrorCopyWith<F, T, $Res> {
  __$$ErrorCopyWithImpl(
      _$Error<F, T> _value, $Res Function(_$Error<F, T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$Error<F, T>(
      failure: null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as F,
    ));
  }
}

/// @nodoc

class _$Error<F, T> with DiagnosticableTreeMixin implements Error<F, T> {
  const _$Error({required this.failure});

  @override
  final F failure;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'BlocState<$F, $T>.error(failure: $failure)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'BlocState<$F, $T>.error'))
      ..add(DiagnosticsProperty('failure', failure));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Error<F, T> &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorCopyWith<F, T, _$Error<F, T>> get copyWith =>
      __$$ErrorCopyWithImpl<F, T, _$Error<F, T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(T data) success,
    required TResult Function(F failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(T data)? success,
    TResult? Function(F failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(T data)? success,
    TResult Function(F failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial<F, T> value) initial,
    required TResult Function(Loading<F, T> value) loading,
    required TResult Function(Success<F, T> value) success,
    required TResult Function(Error<F, T> value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Initial<F, T> value)? initial,
    TResult? Function(Loading<F, T> value)? loading,
    TResult? Function(Success<F, T> value)? success,
    TResult? Function(Error<F, T> value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial<F, T> value)? initial,
    TResult Function(Loading<F, T> value)? loading,
    TResult Function(Success<F, T> value)? success,
    TResult Function(Error<F, T> value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error<F, T> implements BlocState<F, T> {
  const factory Error({required final F failure}) = _$Error<F, T>;

  F get failure;
  @JsonKey(ignore: true)
  _$$ErrorCopyWith<F, T, _$Error<F, T>> get copyWith =>
      throw _privateConstructorUsedError;
}
