// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'company_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CompanyListState {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyListState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyListState()';
  }
}

/// @nodoc
class $CompanyListStateCopyWith<$Res> {
  $CompanyListStateCopyWith(
      CompanyListState _, $Res Function(CompanyListState) __);
}

/// Adds pattern-matching-related methods to [CompanyListState].
extension CompanyListStatePatterns on CompanyListState {
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
    TResult Function(CompanyListInitial value)? initial,
    TResult Function(CompanyListReady value)? ready,
    TResult Function(CompanyListError value)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial() when initial != null:
        return initial(_that);
      case CompanyListReady() when ready != null:
        return ready(_that);
      case CompanyListError() when error != null:
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
    required TResult Function(CompanyListInitial value) initial,
    required TResult Function(CompanyListReady value) ready,
    required TResult Function(CompanyListError value) error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial():
        return initial(_that);
      case CompanyListReady():
        return ready(_that);
      case CompanyListError():
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
    TResult? Function(CompanyListInitial value)? initial,
    TResult? Function(CompanyListReady value)? ready,
    TResult? Function(CompanyListError value)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial() when initial != null:
        return initial(_that);
      case CompanyListReady() when ready != null:
        return ready(_that);
      case CompanyListError() when error != null:
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
    TResult Function(List<CompanyEntity>? data)? ready,
    TResult Function(String? error)? error,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial() when initial != null:
        return initial();
      case CompanyListReady() when ready != null:
        return ready(_that.data);
      case CompanyListError() when error != null:
        return error(_that.error);
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
    required TResult Function(List<CompanyEntity>? data) ready,
    required TResult Function(String? error) error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial():
        return initial();
      case CompanyListReady():
        return ready(_that.data);
      case CompanyListError():
        return error(_that.error);
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
    TResult? Function(List<CompanyEntity>? data)? ready,
    TResult? Function(String? error)? error,
  }) {
    final _that = this;
    switch (_that) {
      case CompanyListInitial() when initial != null:
        return initial();
      case CompanyListReady() when ready != null:
        return ready(_that.data);
      case CompanyListError() when error != null:
        return error(_that.error);
      case _:
        return null;
    }
  }
}

/// @nodoc

class CompanyListInitial implements CompanyListState {
  const CompanyListInitial();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CompanyListInitial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'CompanyListState.initial()';
  }
}

/// @nodoc

class CompanyListReady implements CompanyListState {
  const CompanyListReady({final List<CompanyEntity>? data}) : _data = data;

  final List<CompanyEntity>? _data;
  List<CompanyEntity>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  /// Create a copy of CompanyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyListReadyCopyWith<CompanyListReady> get copyWith =>
      _$CompanyListReadyCopyWithImpl<CompanyListReady>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyListReady &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'CompanyListState.ready(data: $data)';
  }
}

/// @nodoc
abstract mixin class $CompanyListReadyCopyWith<$Res>
    implements $CompanyListStateCopyWith<$Res> {
  factory $CompanyListReadyCopyWith(
          CompanyListReady value, $Res Function(CompanyListReady) _then) =
      _$CompanyListReadyCopyWithImpl;
  @useResult
  $Res call({List<CompanyEntity>? data});
}

/// @nodoc
class _$CompanyListReadyCopyWithImpl<$Res>
    implements $CompanyListReadyCopyWith<$Res> {
  _$CompanyListReadyCopyWithImpl(this._self, this._then);

  final CompanyListReady _self;
  final $Res Function(CompanyListReady) _then;

  /// Create a copy of CompanyListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = freezed,
  }) {
    return _then(CompanyListReady(
      data: freezed == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CompanyEntity>?,
    ));
  }
}

/// @nodoc

class CompanyListError implements CompanyListState {
  const CompanyListError(this.error);

  final String? error;

  /// Create a copy of CompanyListState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CompanyListErrorCopyWith<CompanyListError> get copyWith =>
      _$CompanyListErrorCopyWithImpl<CompanyListError>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is CompanyListError &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @override
  String toString() {
    return 'CompanyListState.error(error: $error)';
  }
}

/// @nodoc
abstract mixin class $CompanyListErrorCopyWith<$Res>
    implements $CompanyListStateCopyWith<$Res> {
  factory $CompanyListErrorCopyWith(
          CompanyListError value, $Res Function(CompanyListError) _then) =
      _$CompanyListErrorCopyWithImpl;
  @useResult
  $Res call({String? error});
}

/// @nodoc
class _$CompanyListErrorCopyWithImpl<$Res>
    implements $CompanyListErrorCopyWith<$Res> {
  _$CompanyListErrorCopyWithImpl(this._self, this._then);

  final CompanyListError _self;
  final $Res Function(CompanyListError) _then;

  /// Create a copy of CompanyListState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? error = freezed,
  }) {
    return _then(CompanyListError(
      freezed == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
