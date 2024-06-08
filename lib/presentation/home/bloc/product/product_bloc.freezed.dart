// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String location) searchLocation,
    required TResult Function() generateTips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String location)? searchLocation,
    TResult? Function()? generateTips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String location)? searchLocation,
    TResult Function()? generateTips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_GenerateTips value) generateTips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_GenerateTips value)? generateTips,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_GenerateTips value)? generateTips,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductEventCopyWith<$Res> {
  factory $ProductEventCopyWith(
          ProductEvent value, $Res Function(ProductEvent) then) =
      _$ProductEventCopyWithImpl<$Res, ProductEvent>;
}

/// @nodoc
class _$ProductEventCopyWithImpl<$Res, $Val extends ProductEvent>
    implements $ProductEventCopyWith<$Res> {
  _$ProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'ProductEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String location) searchLocation,
    required TResult Function() generateTips,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String location)? searchLocation,
    TResult? Function()? generateTips,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String location)? searchLocation,
    TResult Function()? generateTips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_GenerateTips value) generateTips,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_GenerateTips value)? generateTips,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_GenerateTips value)? generateTips,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ProductEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$SearchLocationImplCopyWith<$Res> {
  factory _$$SearchLocationImplCopyWith(_$SearchLocationImpl value,
          $Res Function(_$SearchLocationImpl) then) =
      __$$SearchLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String location});
}

/// @nodoc
class __$$SearchLocationImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$SearchLocationImpl>
    implements _$$SearchLocationImplCopyWith<$Res> {
  __$$SearchLocationImplCopyWithImpl(
      _$SearchLocationImpl _value, $Res Function(_$SearchLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? location = null,
  }) {
    return _then(_$SearchLocationImpl(
      null == location
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SearchLocationImpl implements _SearchLocation {
  const _$SearchLocationImpl(this.location);

  @override
  final String location;

  @override
  String toString() {
    return 'ProductEvent.searchLocation(location: $location)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SearchLocationImpl &&
            (identical(other.location, location) ||
                other.location == location));
  }

  @override
  int get hashCode => Object.hash(runtimeType, location);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      __$$SearchLocationImplCopyWithImpl<_$SearchLocationImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String location) searchLocation,
    required TResult Function() generateTips,
  }) {
    return searchLocation(location);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String location)? searchLocation,
    TResult? Function()? generateTips,
  }) {
    return searchLocation?.call(location);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String location)? searchLocation,
    TResult Function()? generateTips,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(location);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_GenerateTips value) generateTips,
  }) {
    return searchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_GenerateTips value)? generateTips,
  }) {
    return searchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_GenerateTips value)? generateTips,
    required TResult orElse(),
  }) {
    if (searchLocation != null) {
      return searchLocation(this);
    }
    return orElse();
  }
}

abstract class _SearchLocation implements ProductEvent {
  const factory _SearchLocation(final String location) = _$SearchLocationImpl;

  String get location;
  @JsonKey(ignore: true)
  _$$SearchLocationImplCopyWith<_$SearchLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GenerateTipsImplCopyWith<$Res> {
  factory _$$GenerateTipsImplCopyWith(
          _$GenerateTipsImpl value, $Res Function(_$GenerateTipsImpl) then) =
      __$$GenerateTipsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GenerateTipsImplCopyWithImpl<$Res>
    extends _$ProductEventCopyWithImpl<$Res, _$GenerateTipsImpl>
    implements _$$GenerateTipsImplCopyWith<$Res> {
  __$$GenerateTipsImplCopyWithImpl(
      _$GenerateTipsImpl _value, $Res Function(_$GenerateTipsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GenerateTipsImpl implements _GenerateTips {
  const _$GenerateTipsImpl();

  @override
  String toString() {
    return 'ProductEvent.generateTips()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GenerateTipsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String location) searchLocation,
    required TResult Function() generateTips,
  }) {
    return generateTips();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String location)? searchLocation,
    TResult? Function()? generateTips,
  }) {
    return generateTips?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String location)? searchLocation,
    TResult Function()? generateTips,
    required TResult orElse(),
  }) {
    if (generateTips != null) {
      return generateTips();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SearchLocation value) searchLocation,
    required TResult Function(_GenerateTips value) generateTips,
  }) {
    return generateTips(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SearchLocation value)? searchLocation,
    TResult? Function(_GenerateTips value)? generateTips,
  }) {
    return generateTips?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SearchLocation value)? searchLocation,
    TResult Function(_GenerateTips value)? generateTips,
    required TResult orElse(),
  }) {
    if (generateTips != null) {
      return generateTips(this);
    }
    return orElse();
  }
}

abstract class _GenerateTips implements ProductEvent {
  const factory _GenerateTips() = _$GenerateTipsImpl;
}

/// @nodoc
mixin _$ProductState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductStateCopyWith<$Res> {
  factory $ProductStateCopyWith(
          ProductState value, $Res Function(ProductState) then) =
      _$ProductStateCopyWithImpl<$Res, ProductState>;
}

/// @nodoc
class _$ProductStateCopyWithImpl<$Res, $Val extends ProductState>
    implements $ProductStateCopyWith<$Res> {
  _$ProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'ProductState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements ProductState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'ProductState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements ProductState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$SuccessFetchLocationImplCopyWith<$Res> {
  factory _$$SuccessFetchLocationImplCopyWith(_$SuccessFetchLocationImpl value,
          $Res Function(_$SuccessFetchLocationImpl) then) =
      __$$SuccessFetchLocationImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<HotelResponseModel> data});
}

/// @nodoc
class __$$SuccessFetchLocationImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessFetchLocationImpl>
    implements _$$SuccessFetchLocationImplCopyWith<$Res> {
  __$$SuccessFetchLocationImplCopyWithImpl(_$SuccessFetchLocationImpl _value,
      $Res Function(_$SuccessFetchLocationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessFetchLocationImpl(
      null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<HotelResponseModel>,
    ));
  }
}

/// @nodoc

class _$SuccessFetchLocationImpl implements _SuccessFetchLocation {
  const _$SuccessFetchLocationImpl(final List<HotelResponseModel> data)
      : _data = data;

  final List<HotelResponseModel> _data;
  @override
  List<HotelResponseModel> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'ProductState.successFetchLocation(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessFetchLocationImpl &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessFetchLocationImplCopyWith<_$SuccessFetchLocationImpl>
      get copyWith =>
          __$$SuccessFetchLocationImplCopyWithImpl<_$SuccessFetchLocationImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) {
    return successFetchLocation(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) {
    return successFetchLocation?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (successFetchLocation != null) {
      return successFetchLocation(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) {
    return successFetchLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) {
    return successFetchLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successFetchLocation != null) {
      return successFetchLocation(this);
    }
    return orElse();
  }
}

abstract class _SuccessFetchLocation implements ProductState {
  const factory _SuccessFetchLocation(final List<HotelResponseModel> data) =
      _$SuccessFetchLocationImpl;

  List<HotelResponseModel> get data;
  @JsonKey(ignore: true)
  _$$SuccessFetchLocationImplCopyWith<_$SuccessFetchLocationImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessGenerateImplCopyWith<$Res> {
  factory _$$SuccessGenerateImplCopyWith(_$SuccessGenerateImpl value,
          $Res Function(_$SuccessGenerateImpl) then) =
      __$$SuccessGenerateImplCopyWithImpl<$Res>;
  @useResult
  $Res call({GenerateResponseModel data});
}

/// @nodoc
class __$$SuccessGenerateImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$SuccessGenerateImpl>
    implements _$$SuccessGenerateImplCopyWith<$Res> {
  __$$SuccessGenerateImplCopyWithImpl(
      _$SuccessGenerateImpl _value, $Res Function(_$SuccessGenerateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$SuccessGenerateImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as GenerateResponseModel,
    ));
  }
}

/// @nodoc

class _$SuccessGenerateImpl implements _SuccessGenerate {
  const _$SuccessGenerateImpl(this.data);

  @override
  final GenerateResponseModel data;

  @override
  String toString() {
    return 'ProductState.successGenerate(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessGenerateImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessGenerateImplCopyWith<_$SuccessGenerateImpl> get copyWith =>
      __$$SuccessGenerateImplCopyWithImpl<_$SuccessGenerateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) {
    return successGenerate(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) {
    return successGenerate?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (successGenerate != null) {
      return successGenerate(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) {
    return successGenerate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) {
    return successGenerate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (successGenerate != null) {
      return successGenerate(this);
    }
    return orElse();
  }
}

abstract class _SuccessGenerate implements ProductState {
  const factory _SuccessGenerate(final GenerateResponseModel data) =
      _$SuccessGenerateImpl;

  GenerateResponseModel get data;
  @JsonKey(ignore: true)
  _$$SuccessGenerateImplCopyWith<_$SuccessGenerateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailedImplCopyWith<$Res> {
  factory _$$FailedImplCopyWith(
          _$FailedImpl value, $Res Function(_$FailedImpl) then) =
      __$$FailedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailedImplCopyWithImpl<$Res>
    extends _$ProductStateCopyWithImpl<$Res, _$FailedImpl>
    implements _$$FailedImplCopyWith<$Res> {
  __$$FailedImplCopyWithImpl(
      _$FailedImpl _value, $Res Function(_$FailedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailedImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailedImpl implements _Failed {
  const _$FailedImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'ProductState.failed(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailedImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      __$$FailedImplCopyWithImpl<_$FailedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<HotelResponseModel> data)
        successFetchLocation,
    required TResult Function(GenerateResponseModel data) successGenerate,
    required TResult Function(String message) failed,
  }) {
    return failed(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult? Function(GenerateResponseModel data)? successGenerate,
    TResult? Function(String message)? failed,
  }) {
    return failed?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<HotelResponseModel> data)? successFetchLocation,
    TResult Function(GenerateResponseModel data)? successGenerate,
    TResult Function(String message)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessFetchLocation value) successFetchLocation,
    required TResult Function(_SuccessGenerate value) successGenerate,
    required TResult Function(_Failed value) failed,
  }) {
    return failed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult? Function(_SuccessGenerate value)? successGenerate,
    TResult? Function(_Failed value)? failed,
  }) {
    return failed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessFetchLocation value)? successFetchLocation,
    TResult Function(_SuccessGenerate value)? successGenerate,
    TResult Function(_Failed value)? failed,
    required TResult orElse(),
  }) {
    if (failed != null) {
      return failed(this);
    }
    return orElse();
  }
}

abstract class _Failed implements ProductState {
  const factory _Failed(final String message) = _$FailedImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailedImplCopyWith<_$FailedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
