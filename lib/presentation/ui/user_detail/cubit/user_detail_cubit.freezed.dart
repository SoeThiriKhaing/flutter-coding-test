// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_detail_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$UserDetailState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDetailState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailState()';
  }
}

/// @nodoc
class $UserDetailStateCopyWith<$Res> {
  $UserDetailStateCopyWith(
      UserDetailState _, $Res Function(UserDetailState) __);
}

/// Adds pattern-matching-related methods to [UserDetailState].
extension UserDetailStatePatterns on UserDetailState {
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
    TResult Function(UserDetailInitial value)? initial,
    TResult Function(UserDetailReady value)? ready,
    TResult Function(UserDetailError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial() when initial != null:
        return initial(_that);
      case UserDetailReady() when ready != null:
        return ready(_that);
      case UserDetailError() when error != null:
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
    required TResult Function(UserDetailInitial value) initial,
    required TResult Function(UserDetailReady value) ready,
    required TResult Function(UserDetailError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial():
        return initial(_that);
      case UserDetailReady():
        return ready(_that);
      case UserDetailError():
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
    TResult? Function(UserDetailInitial value)? initial,
    TResult? Function(UserDetailReady value)? ready,
    TResult? Function(UserDetailError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial() when initial != null:
        return initial(_that);
      case UserDetailReady() when ready != null:
        return ready(_that);
      case UserDetailError() when error != null:
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
    TResult Function(UserEntity? user)? ready,
    TResult Function(String? message)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial() when initial != null:
        return initial();
      case UserDetailReady() when ready != null:
        return ready(_that.user);
      case UserDetailError() when error != null:
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
    required TResult Function(UserEntity? user) ready,
    required TResult Function(String? message) error,
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial():
        return initial();
      case UserDetailReady():
        return ready(_that.user);
      case UserDetailError():
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
    TResult? Function(UserEntity? user)? ready,
    TResult? Function(String? message)? error,
  }) {
    final _that = this;
    switch (_that) {
      case UserDetailInitial() when initial != null:
        return initial();
      case UserDetailReady() when ready != null:
        return ready(_that.user);
      case UserDetailError() when error != null:
        return error(_that.message);
      case _:
        return null;
    }
  }
}

/// @nodoc

class UserDetailInitial implements UserDetailState {
  const UserDetailInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UserDetailInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'UserDetailState.initial()';
  }
}

/// @nodoc

class UserDetailReady implements UserDetailState {
  const UserDetailReady({this.user});

  final UserEntity? user;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailReadyCopyWith<UserDetailReady> get copyWith =>
      _$UserDetailReadyCopyWithImpl<UserDetailReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailReady &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @override
  String toString() {
    return 'UserDetailState.ready(user: $user)';
  }
}

/// @nodoc
abstract mixin class $UserDetailReadyCopyWith<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  factory $UserDetailReadyCopyWith(
          UserDetailReady value, $Res Function(UserDetailReady) _then) =
      _$UserDetailReadyCopyWithImpl;
  @useResult
  $Res call({UserEntity? user});
}

/// @nodoc
class _$UserDetailReadyCopyWithImpl<$Res>
    implements $UserDetailReadyCopyWith<$Res> {
  _$UserDetailReadyCopyWithImpl(this._self, this._then);

  final UserDetailReady _self;
  final $Res Function(UserDetailReady) _then;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? user = freezed,
  }) {
    return _then(UserDetailReady(
      user: freezed == user
          ? _self.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserEntity?,
    ));
  }
}

/// @nodoc

class UserDetailError implements UserDetailState {
  const UserDetailError(this.message);

  final String? message;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $UserDetailErrorCopyWith<UserDetailError> get copyWith =>
      _$UserDetailErrorCopyWithImpl<UserDetailError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UserDetailError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @override
  String toString() {
    return 'UserDetailState.error(message: $message)';
  }
}

/// @nodoc
abstract mixin class $UserDetailErrorCopyWith<$Res>
    implements $UserDetailStateCopyWith<$Res> {
  factory $UserDetailErrorCopyWith(
          UserDetailError value, $Res Function(UserDetailError) _then) =
      _$UserDetailErrorCopyWithImpl;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class _$UserDetailErrorCopyWithImpl<$Res>
    implements $UserDetailErrorCopyWith<$Res> {
  _$UserDetailErrorCopyWithImpl(this._self, this._then);

  final UserDetailError _self;
  final $Res Function(UserDetailError) _then;

  /// Create a copy of UserDetailState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UserDetailError(
      freezed == message
          ? _self.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
