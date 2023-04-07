// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ResponseModel<T> {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successResponse,
    required TResult Function(GenericResponseModel data) errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successResponse,
    TResult? Function(GenericResponseModel data)? errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successResponse,
    TResult Function(GenericResponseModel data)? errorResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse<T> value) successResponse,
    required TResult Function(ErrorResponse<T> value) errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse<T> value)? successResponse,
    TResult? Function(ErrorResponse<T> value)? errorResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse<T> value)? successResponse,
    TResult Function(ErrorResponse<T> value)? errorResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResponseModelCopyWith<T, $Res> {
  factory $ResponseModelCopyWith(
          ResponseModel<T> value, $Res Function(ResponseModel<T>) then) =
      _$ResponseModelCopyWithImpl<T, $Res, ResponseModel<T>>;
}

/// @nodoc
class _$ResponseModelCopyWithImpl<T, $Res, $Val extends ResponseModel<T>>
    implements $ResponseModelCopyWith<T, $Res> {
  _$ResponseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessResponseCopyWith<T, $Res> {
  factory _$$SuccessResponseCopyWith(_$SuccessResponse<T> value,
          $Res Function(_$SuccessResponse<T>) then) =
      __$$SuccessResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({T data});
}

/// @nodoc
class __$$SuccessResponseCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$SuccessResponse<T>>
    implements _$$SuccessResponseCopyWith<T, $Res> {
  __$$SuccessResponseCopyWithImpl(
      _$SuccessResponse<T> _value, $Res Function(_$SuccessResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessResponse<T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T,
    ));
  }
}

/// @nodoc

class _$SuccessResponse<T> implements SuccessResponse<T> {
  const _$SuccessResponse({required this.data});

  @override
  final T data;

  @override
  String toString() {
    return 'ResponseModel<$T>.successResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessResponse<T> &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessResponseCopyWith<T, _$SuccessResponse<T>> get copyWith =>
      __$$SuccessResponseCopyWithImpl<T, _$SuccessResponse<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successResponse,
    required TResult Function(GenericResponseModel data) errorResponse,
  }) {
    return successResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successResponse,
    TResult? Function(GenericResponseModel data)? errorResponse,
  }) {
    return successResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successResponse,
    TResult Function(GenericResponseModel data)? errorResponse,
    required TResult orElse(),
  }) {
    if (successResponse != null) {
      return successResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse<T> value) successResponse,
    required TResult Function(ErrorResponse<T> value) errorResponse,
  }) {
    return successResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse<T> value)? successResponse,
    TResult? Function(ErrorResponse<T> value)? errorResponse,
  }) {
    return successResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse<T> value)? successResponse,
    TResult Function(ErrorResponse<T> value)? errorResponse,
    required TResult orElse(),
  }) {
    if (successResponse != null) {
      return successResponse(this);
    }
    return orElse();
  }
}

abstract class SuccessResponse<T> implements ResponseModel<T> {
  const factory SuccessResponse({required final T data}) = _$SuccessResponse<T>;

  T get data;
  @JsonKey(ignore: true)
  _$$SuccessResponseCopyWith<T, _$SuccessResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorResponseCopyWith<T, $Res> {
  factory _$$ErrorResponseCopyWith(
          _$ErrorResponse<T> value, $Res Function(_$ErrorResponse<T>) then) =
      __$$ErrorResponseCopyWithImpl<T, $Res>;
  @useResult
  $Res call({GenericResponseModel data});
}

/// @nodoc
class __$$ErrorResponseCopyWithImpl<T, $Res>
    extends _$ResponseModelCopyWithImpl<T, $Res, _$ErrorResponse<T>>
    implements _$$ErrorResponseCopyWith<T, $Res> {
  __$$ErrorResponseCopyWithImpl(
      _$ErrorResponse<T> _value, $Res Function(_$ErrorResponse<T>) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ErrorResponse<T>(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenericResponseModel,
    ));
  }
}

/// @nodoc

class _$ErrorResponse<T> implements ErrorResponse<T> {
  const _$ErrorResponse({required this.data});

  @override
  final GenericResponseModel data;

  @override
  String toString() {
    return 'ResponseModel<$T>.errorResponse(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorResponse<T> &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorResponseCopyWith<T, _$ErrorResponse<T>> get copyWith =>
      __$$ErrorResponseCopyWithImpl<T, _$ErrorResponse<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(T data) successResponse,
    required TResult Function(GenericResponseModel data) errorResponse,
  }) {
    return errorResponse(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(T data)? successResponse,
    TResult? Function(GenericResponseModel data)? errorResponse,
  }) {
    return errorResponse?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(T data)? successResponse,
    TResult Function(GenericResponseModel data)? errorResponse,
    required TResult orElse(),
  }) {
    if (errorResponse != null) {
      return errorResponse(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SuccessResponse<T> value) successResponse,
    required TResult Function(ErrorResponse<T> value) errorResponse,
  }) {
    return errorResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SuccessResponse<T> value)? successResponse,
    TResult? Function(ErrorResponse<T> value)? errorResponse,
  }) {
    return errorResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SuccessResponse<T> value)? successResponse,
    TResult Function(ErrorResponse<T> value)? errorResponse,
    required TResult orElse(),
  }) {
    if (errorResponse != null) {
      return errorResponse(this);
    }
    return orElse();
  }
}

abstract class ErrorResponse<T> implements ResponseModel<T> {
  const factory ErrorResponse({required final GenericResponseModel data}) =
      _$ErrorResponse<T>;

  GenericResponseModel get data;
  @JsonKey(ignore: true)
  _$$ErrorResponseCopyWith<T, _$ErrorResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
