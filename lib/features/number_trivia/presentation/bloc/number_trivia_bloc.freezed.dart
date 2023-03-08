// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'number_trivia_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NumberTriviaEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int number) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int number)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int number)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetConcreteNumber value) getConcreteNumber,
    required TResult Function(_GetRandomNumber value) getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult? Function(_GetRandomNumber value)? getRandomNumber,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult Function(_GetRandomNumber value)? getRandomNumber,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaEventCopyWith<$Res> {
  factory $NumberTriviaEventCopyWith(
          NumberTriviaEvent value, $Res Function(NumberTriviaEvent) then) =
      _$NumberTriviaEventCopyWithImpl<$Res, NumberTriviaEvent>;
}

/// @nodoc
class _$NumberTriviaEventCopyWithImpl<$Res, $Val extends NumberTriviaEvent>
    implements $NumberTriviaEventCopyWith<$Res> {
  _$NumberTriviaEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'NumberTriviaEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int number) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int number)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int number)? getConcreteNumber,
    TResult Function()? getRandomNumber,
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
    required TResult Function(_GetConcreteNumber value) getConcreteNumber,
    required TResult Function(_GetRandomNumber value) getRandomNumber,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult? Function(_GetRandomNumber value)? getRandomNumber,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult Function(_GetRandomNumber value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements NumberTriviaEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_GetConcreteNumberCopyWith<$Res> {
  factory _$$_GetConcreteNumberCopyWith(_$_GetConcreteNumber value,
          $Res Function(_$_GetConcreteNumber) then) =
      __$$_GetConcreteNumberCopyWithImpl<$Res>;
  @useResult
  $Res call({int number});
}

/// @nodoc
class __$$_GetConcreteNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$_GetConcreteNumber>
    implements _$$_GetConcreteNumberCopyWith<$Res> {
  __$$_GetConcreteNumberCopyWithImpl(
      _$_GetConcreteNumber _value, $Res Function(_$_GetConcreteNumber) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? number = null,
  }) {
    return _then(_$_GetConcreteNumber(
      null == number
          ? _value.number
          : number // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_GetConcreteNumber implements _GetConcreteNumber {
  const _$_GetConcreteNumber(this.number);

  @override
  final int number;

  @override
  String toString() {
    return 'NumberTriviaEvent.getConcreteNumber(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetConcreteNumber &&
            (identical(other.number, number) || other.number == number));
  }

  @override
  int get hashCode => Object.hash(runtimeType, number);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetConcreteNumberCopyWith<_$_GetConcreteNumber> get copyWith =>
      __$$_GetConcreteNumberCopyWithImpl<_$_GetConcreteNumber>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int number) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getConcreteNumber(number);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int number)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return getConcreteNumber?.call(number);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int number)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(number);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetConcreteNumber value) getConcreteNumber,
    required TResult Function(_GetRandomNumber value) getRandomNumber,
  }) {
    return getConcreteNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult? Function(_GetRandomNumber value)? getRandomNumber,
  }) {
    return getConcreteNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult Function(_GetRandomNumber value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getConcreteNumber != null) {
      return getConcreteNumber(this);
    }
    return orElse();
  }
}

abstract class _GetConcreteNumber implements NumberTriviaEvent {
  const factory _GetConcreteNumber(final int number) = _$_GetConcreteNumber;

  int get number;
  @JsonKey(ignore: true)
  _$$_GetConcreteNumberCopyWith<_$_GetConcreteNumber> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_GetRandomNumberCopyWith<$Res> {
  factory _$$_GetRandomNumberCopyWith(
          _$_GetRandomNumber value, $Res Function(_$_GetRandomNumber) then) =
      __$$_GetRandomNumberCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetRandomNumberCopyWithImpl<$Res>
    extends _$NumberTriviaEventCopyWithImpl<$Res, _$_GetRandomNumber>
    implements _$$_GetRandomNumberCopyWith<$Res> {
  __$$_GetRandomNumberCopyWithImpl(
      _$_GetRandomNumber _value, $Res Function(_$_GetRandomNumber) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetRandomNumber implements _GetRandomNumber {
  const _$_GetRandomNumber();

  @override
  String toString() {
    return 'NumberTriviaEvent.getRandomNumber()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetRandomNumber);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int number) getConcreteNumber,
    required TResult Function() getRandomNumber,
  }) {
    return getRandomNumber();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int number)? getConcreteNumber,
    TResult? Function()? getRandomNumber,
  }) {
    return getRandomNumber?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int number)? getConcreteNumber,
    TResult Function()? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_GetConcreteNumber value) getConcreteNumber,
    required TResult Function(_GetRandomNumber value) getRandomNumber,
  }) {
    return getRandomNumber(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult? Function(_GetRandomNumber value)? getRandomNumber,
  }) {
    return getRandomNumber?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_GetConcreteNumber value)? getConcreteNumber,
    TResult Function(_GetRandomNumber value)? getRandomNumber,
    required TResult orElse(),
  }) {
    if (getRandomNumber != null) {
      return getRandomNumber(this);
    }
    return orElse();
  }
}

abstract class _GetRandomNumber implements NumberTriviaEvent {
  const factory _GetRandomNumber() = _$_GetRandomNumber;
}

/// @nodoc
mixin _$NumberTriviaState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NumberTrivia numberTrivia) getTriviaSuccess,
    required TResult Function() loading,
    required TResult Function(String err) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult? Function()? loading,
    TResult? Function(String err)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult Function()? loading,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTriviaSuccess value) getTriviaSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NumberTriviaStateCopyWith<$Res> {
  factory $NumberTriviaStateCopyWith(
          NumberTriviaState value, $Res Function(NumberTriviaState) then) =
      _$NumberTriviaStateCopyWithImpl<$Res, NumberTriviaState>;
}

/// @nodoc
class _$NumberTriviaStateCopyWithImpl<$Res, $Val extends NumberTriviaState>
    implements $NumberTriviaStateCopyWith<$Res> {
  _$NumberTriviaStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'NumberTriviaState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NumberTrivia numberTrivia) getTriviaSuccess,
    required TResult Function() loading,
    required TResult Function(String err) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult? Function()? loading,
    TResult? Function(String err)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult Function()? loading,
    TResult Function(String err)? error,
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
    required TResult Function(_GetTriviaSuccess value) getTriviaSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements NumberTriviaState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_GetTriviaSuccessCopyWith<$Res> {
  factory _$$_GetTriviaSuccessCopyWith(
          _$_GetTriviaSuccess value, $Res Function(_$_GetTriviaSuccess) then) =
      __$$_GetTriviaSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({NumberTrivia numberTrivia});
}

/// @nodoc
class __$$_GetTriviaSuccessCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$_GetTriviaSuccess>
    implements _$$_GetTriviaSuccessCopyWith<$Res> {
  __$$_GetTriviaSuccessCopyWithImpl(
      _$_GetTriviaSuccess _value, $Res Function(_$_GetTriviaSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberTrivia = freezed,
  }) {
    return _then(_$_GetTriviaSuccess(
      freezed == numberTrivia
          ? _value.numberTrivia
          : numberTrivia // ignore: cast_nullable_to_non_nullable
              as NumberTrivia,
    ));
  }
}

/// @nodoc

class _$_GetTriviaSuccess implements _GetTriviaSuccess {
  const _$_GetTriviaSuccess(this.numberTrivia);

  @override
  final NumberTrivia numberTrivia;

  @override
  String toString() {
    return 'NumberTriviaState.getTriviaSuccess(numberTrivia: $numberTrivia)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GetTriviaSuccess &&
            const DeepCollectionEquality()
                .equals(other.numberTrivia, numberTrivia));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(numberTrivia));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GetTriviaSuccessCopyWith<_$_GetTriviaSuccess> get copyWith =>
      __$$_GetTriviaSuccessCopyWithImpl<_$_GetTriviaSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NumberTrivia numberTrivia) getTriviaSuccess,
    required TResult Function() loading,
    required TResult Function(String err) error,
  }) {
    return getTriviaSuccess(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult? Function()? loading,
    TResult? Function(String err)? error,
  }) {
    return getTriviaSuccess?.call(numberTrivia);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult Function()? loading,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (getTriviaSuccess != null) {
      return getTriviaSuccess(numberTrivia);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTriviaSuccess value) getTriviaSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return getTriviaSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return getTriviaSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (getTriviaSuccess != null) {
      return getTriviaSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetTriviaSuccess implements NumberTriviaState {
  const factory _GetTriviaSuccess(final NumberTrivia numberTrivia) =
      _$_GetTriviaSuccess;

  NumberTrivia get numberTrivia;
  @JsonKey(ignore: true)
  _$$_GetTriviaSuccessCopyWith<_$_GetTriviaSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'NumberTriviaState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NumberTrivia numberTrivia) getTriviaSuccess,
    required TResult Function() loading,
    required TResult Function(String err) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult? Function()? loading,
    TResult? Function(String err)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult Function()? loading,
    TResult Function(String err)? error,
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
    required TResult Function(_GetTriviaSuccess value) getTriviaSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements NumberTriviaState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String err});
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$NumberTriviaStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$_Error(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Error implements _Error {
  const _$_Error(this.err);

  @override
  final String err;

  @override
  String toString() {
    return 'NumberTriviaState.error(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(NumberTrivia numberTrivia) getTriviaSuccess,
    required TResult Function() loading,
    required TResult Function(String err) error,
  }) {
    return error(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult? Function()? loading,
    TResult? Function(String err)? error,
  }) {
    return error?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(NumberTrivia numberTrivia)? getTriviaSuccess,
    TResult Function()? loading,
    TResult Function(String err)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetTriviaSuccess value) getTriviaSuccess,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetTriviaSuccess value)? getTriviaSuccess,
    TResult Function(_Loading value)? loading,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements NumberTriviaState {
  const factory _Error(final String err) = _$_Error;

  String get err;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
