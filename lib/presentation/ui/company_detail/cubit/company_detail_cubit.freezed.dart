// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyDetailState()';
  }
}

/// @nodoc
class $CompanyDetailStateCopyWith<$Res> {
  $CompanyDetailStateCopyWith(
      CompanyDetailState _, $Res Function(CompanyDetailState) __);
}

/// Adds pattern-matching-related methods to [CompanyDetailState].
extension CompanyDetailStatePatterns on CompanyDetailState {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CompanyDetailInitial value)? initial,
    TResult Function(CompanyDetailReady value)? ready,
    TResult Function(CompanyDetailError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial() when initial != null:
        return initial(_that);
      case CompanyDetailReady() when ready != null:
        return ready(_that);
      case CompanyDetailError() when error != null:
        return error(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CompanyDetailInitial value) initial,
    required TResult Function(CompanyDetailReady value) ready,
    required TResult Function(CompanyDetailError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial():
        return initial(_that);
      case CompanyDetailReady():
        return ready(_that);
      case CompanyDetailError():
        return error(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(CompanyDetailInitial value)? initial,
    TResult? Function(CompanyDetailReady value)? ready,
    TResult? Function(CompanyDetailError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial() when initial != null:
        return initial(_that);
      case CompanyDetailReady() when ready != null:
        return ready(_that);
      case CompanyDetailError() when error != null:
        return error(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(CompanyEntity? data)? ready,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial() when initial != null:
        return initial();
      case CompanyDetailReady() when ready != null:
        return ready(_that.data);
      case CompanyDetailError() when error != null:
        return error(_that.message);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(CompanyEntity? data) ready,
    required TResult Function(String message) error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial():
        return initial();
      case CompanyDetailReady():
        return ready(_that.data);
      case CompanyDetailError():
        return error(_that.message);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(CompanyEntity? data)? ready,
    TResult? Function(String message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyDetailInitial() when initial != null:
        return initial();
      case CompanyDetailReady() when ready != null:
        return ready(_that.data);
      case CompanyDetailError() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CompanyDetailInitial implements CompanyDetailState {
  const CompanyDetailInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyDetailState.initial()';
  }
}

/// @nodoc

class CompanyDetailReady implements CompanyDetailState {
  const CompanyDetailReady({this.data});

  final CompanyEntity? data;

  /// Create a copy of CompanyDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyDetailReadyCopyWith<CompanyDetailReady> get copyWith =>
      _$CompanyDetailReadyCopyWithImpl<CompanyDetailReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyDetailReady &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'CompanyDetailState.ready(data: $data)';
  }
}

/// @nodoc
abstract mixin class $CompanyDetailReadyCopyWith<$Res>
    implements $CompanyDetailStateCopyWith<$Res> {
  factory $CompanyDetailReadyCopyWith(
          CompanyDetailReady value, $Res Function(CompanyDetailReady) _then) =
      _$CompanyDetailReadyCopyWithImpl;
  @useResult
  $Res call({CompanyEntity? data});
}

/// @nodoc
class _$CompanyDetailReadyCopyWithImpl<$Res>
    implements $CompanyDetailReadyCopyWith<$Res> {
  _$CompanyDetailReadyCopyWithImpl(this._self, this._then);

  final CompanyDetailReady _self;
  final $Res Function(CompanyDetailReady) _then;

  /// Create a copy of CompanyDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CompanyDetailReady(
      data: freezed == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as CompanyEntity?,
    ));
  }
}

/// @nodoc

class CompanyDetailError implements CompanyDetailState {
  const CompanyDetailError(this.message);

  final String message;

  /// Create a copy of CompanyDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyDetailErrorCopyWith<CompanyDetailError> get copyWith =>
      _$CompanyDetailErrorCopyWithImpl<CompanyDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyDetailError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'CompanyDetailState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $CompanyDetailErrorCopyWith<$Res>
    implements $CompanyDetailStateCopyWith<$Res> {
  factory $CompanyDetailErrorCopyWith(
          CompanyDetailError value, $Res Function(CompanyDetailError) _then) =
      _$CompanyDetailErrorCopyWithImpl;
  @useResult
  $Res call({String message});
}

/// @nodoc
class _$CompanyDetailErrorCopyWithImpl<$Res>
    implements $CompanyDetailErrorCopyWith<$Res> {
  _$CompanyDetailErrorCopyWithImpl(this._self, this._then);

  final CompanyDetailError _self;
  final $Res Function(CompanyDetailError) _then;

  /// Create a copy of CompanyDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = null,
  }) {
    return _then(CompanyDetailError(
      null == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
