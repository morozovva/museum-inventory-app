// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owners_application_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnersApplicationState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<int> itemIds) formChanged,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<int> itemIds)? formChanged,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<int> itemIds)? formChanged,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnersApplicationState value) initial,
    required TResult Function(_OwnersApplicationFormChanged value) formChanged,
    required TResult Function(_OwnersApplicationError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersApplicationState value)? initial,
    TResult? Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult? Function(_OwnersApplicationError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersApplicationState value)? initial,
    TResult Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult Function(_OwnersApplicationError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnersApplicationStateCopyWith<$Res> {
  factory $OwnersApplicationStateCopyWith(OwnersApplicationState value,
          $Res Function(OwnersApplicationState) then) =
      _$OwnersApplicationStateCopyWithImpl<$Res, OwnersApplicationState>;
}

/// @nodoc
class _$OwnersApplicationStateCopyWithImpl<$Res,
        $Val extends OwnersApplicationState>
    implements $OwnersApplicationStateCopyWith<$Res> {
  _$OwnersApplicationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OwnersApplicationStateImplCopyWith<$Res> {
  factory _$$OwnersApplicationStateImplCopyWith(
          _$OwnersApplicationStateImpl value,
          $Res Function(_$OwnersApplicationStateImpl) then) =
      __$$OwnersApplicationStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnersApplicationStateImplCopyWithImpl<$Res>
    extends _$OwnersApplicationStateCopyWithImpl<$Res,
        _$OwnersApplicationStateImpl>
    implements _$$OwnersApplicationStateImplCopyWith<$Res> {
  __$$OwnersApplicationStateImplCopyWithImpl(
      _$OwnersApplicationStateImpl _value,
      $Res Function(_$OwnersApplicationStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnersApplicationStateImpl implements _OwnersApplicationState {
  const _$OwnersApplicationStateImpl();

  @override
  String toString() {
    return 'OwnersApplicationState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnersApplicationStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<int> itemIds) formChanged,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<int> itemIds)? formChanged,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<int> itemIds)? formChanged,
    TResult Function()? error,
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
    required TResult Function(_OwnersApplicationState value) initial,
    required TResult Function(_OwnersApplicationFormChanged value) formChanged,
    required TResult Function(_OwnersApplicationError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersApplicationState value)? initial,
    TResult? Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult? Function(_OwnersApplicationError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersApplicationState value)? initial,
    TResult Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult Function(_OwnersApplicationError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OwnersApplicationState implements OwnersApplicationState {
  const factory _OwnersApplicationState() = _$OwnersApplicationStateImpl;
}

/// @nodoc
abstract class _$$OwnersApplicationFormChangedImplCopyWith<$Res> {
  factory _$$OwnersApplicationFormChangedImplCopyWith(
          _$OwnersApplicationFormChangedImpl value,
          $Res Function(_$OwnersApplicationFormChangedImpl) then) =
      __$$OwnersApplicationFormChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Set<int> itemIds});
}

/// @nodoc
class __$$OwnersApplicationFormChangedImplCopyWithImpl<$Res>
    extends _$OwnersApplicationStateCopyWithImpl<$Res,
        _$OwnersApplicationFormChangedImpl>
    implements _$$OwnersApplicationFormChangedImplCopyWith<$Res> {
  __$$OwnersApplicationFormChangedImplCopyWithImpl(
      _$OwnersApplicationFormChangedImpl _value,
      $Res Function(_$OwnersApplicationFormChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? itemIds = null,
  }) {
    return _then(_$OwnersApplicationFormChangedImpl(
      itemIds: null == itemIds
          ? _value._itemIds
          : itemIds // ignore: cast_nullable_to_non_nullable
              as Set<int>,
    ));
  }
}

/// @nodoc

class _$OwnersApplicationFormChangedImpl
    implements _OwnersApplicationFormChanged {
  const _$OwnersApplicationFormChangedImpl({required final Set<int> itemIds})
      : _itemIds = itemIds;

// required OwnersApplication ownersApplication,
  final Set<int> _itemIds;
// required OwnersApplication ownersApplication,
  @override
  Set<int> get itemIds {
    if (_itemIds is EqualUnmodifiableSetView) return _itemIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableSetView(_itemIds);
  }

  @override
  String toString() {
    return 'OwnersApplicationState.formChanged(itemIds: $itemIds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnersApplicationFormChangedImpl &&
            const DeepCollectionEquality().equals(other._itemIds, _itemIds));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_itemIds));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnersApplicationFormChangedImplCopyWith<
          _$OwnersApplicationFormChangedImpl>
      get copyWith => __$$OwnersApplicationFormChangedImplCopyWithImpl<
          _$OwnersApplicationFormChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<int> itemIds) formChanged,
    required TResult Function() error,
  }) {
    return formChanged(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<int> itemIds)? formChanged,
    TResult? Function()? error,
  }) {
    return formChanged?.call(itemIds);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<int> itemIds)? formChanged,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (formChanged != null) {
      return formChanged(itemIds);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnersApplicationState value) initial,
    required TResult Function(_OwnersApplicationFormChanged value) formChanged,
    required TResult Function(_OwnersApplicationError value) error,
  }) {
    return formChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersApplicationState value)? initial,
    TResult? Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult? Function(_OwnersApplicationError value)? error,
  }) {
    return formChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersApplicationState value)? initial,
    TResult Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult Function(_OwnersApplicationError value)? error,
    required TResult orElse(),
  }) {
    if (formChanged != null) {
      return formChanged(this);
    }
    return orElse();
  }
}

abstract class _OwnersApplicationFormChanged implements OwnersApplicationState {
  const factory _OwnersApplicationFormChanged(
      {required final Set<int> itemIds}) = _$OwnersApplicationFormChangedImpl;

// required OwnersApplication ownersApplication,
  Set<int> get itemIds;
  @JsonKey(ignore: true)
  _$$OwnersApplicationFormChangedImplCopyWith<
          _$OwnersApplicationFormChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OwnersApplicationErrorImplCopyWith<$Res> {
  factory _$$OwnersApplicationErrorImplCopyWith(
          _$OwnersApplicationErrorImpl value,
          $Res Function(_$OwnersApplicationErrorImpl) then) =
      __$$OwnersApplicationErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnersApplicationErrorImplCopyWithImpl<$Res>
    extends _$OwnersApplicationStateCopyWithImpl<$Res,
        _$OwnersApplicationErrorImpl>
    implements _$$OwnersApplicationErrorImplCopyWith<$Res> {
  __$$OwnersApplicationErrorImplCopyWithImpl(
      _$OwnersApplicationErrorImpl _value,
      $Res Function(_$OwnersApplicationErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnersApplicationErrorImpl implements _OwnersApplicationError {
  const _$OwnersApplicationErrorImpl();

  @override
  String toString() {
    return 'OwnersApplicationState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnersApplicationErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Set<int> itemIds) formChanged,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(Set<int> itemIds)? formChanged,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Set<int> itemIds)? formChanged,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnersApplicationState value) initial,
    required TResult Function(_OwnersApplicationFormChanged value) formChanged,
    required TResult Function(_OwnersApplicationError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersApplicationState value)? initial,
    TResult? Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult? Function(_OwnersApplicationError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersApplicationState value)? initial,
    TResult Function(_OwnersApplicationFormChanged value)? formChanged,
    TResult Function(_OwnersApplicationError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _OwnersApplicationError implements OwnersApplicationState {
  const factory _OwnersApplicationError() = _$OwnersApplicationErrorImpl;
}
