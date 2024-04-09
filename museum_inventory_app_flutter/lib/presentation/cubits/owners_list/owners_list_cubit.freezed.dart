// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'owners_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OwnersListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Owner> owners) ownersLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Owner> owners)? ownersLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Owner> owners)? ownersLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnersListState value) initial,
    required TResult Function(_OwnersLoaded value) ownersLoaded,
    required TResult Function(_OwnersError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersListState value)? initial,
    TResult? Function(_OwnersLoaded value)? ownersLoaded,
    TResult? Function(_OwnersError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersListState value)? initial,
    TResult Function(_OwnersLoaded value)? ownersLoaded,
    TResult Function(_OwnersError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OwnersListStateCopyWith<$Res> {
  factory $OwnersListStateCopyWith(
          OwnersListState value, $Res Function(OwnersListState) then) =
      _$OwnersListStateCopyWithImpl<$Res, OwnersListState>;
}

/// @nodoc
class _$OwnersListStateCopyWithImpl<$Res, $Val extends OwnersListState>
    implements $OwnersListStateCopyWith<$Res> {
  _$OwnersListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$OwnersListStateImplCopyWith<$Res> {
  factory _$$OwnersListStateImplCopyWith(_$OwnersListStateImpl value,
          $Res Function(_$OwnersListStateImpl) then) =
      __$$OwnersListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnersListStateImplCopyWithImpl<$Res>
    extends _$OwnersListStateCopyWithImpl<$Res, _$OwnersListStateImpl>
    implements _$$OwnersListStateImplCopyWith<$Res> {
  __$$OwnersListStateImplCopyWithImpl(
      _$OwnersListStateImpl _value, $Res Function(_$OwnersListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnersListStateImpl implements _OwnersListState {
  const _$OwnersListStateImpl();

  @override
  String toString() {
    return 'OwnersListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OwnersListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Owner> owners) ownersLoaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Owner> owners)? ownersLoaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Owner> owners)? ownersLoaded,
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
    required TResult Function(_OwnersListState value) initial,
    required TResult Function(_OwnersLoaded value) ownersLoaded,
    required TResult Function(_OwnersError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersListState value)? initial,
    TResult? Function(_OwnersLoaded value)? ownersLoaded,
    TResult? Function(_OwnersError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersListState value)? initial,
    TResult Function(_OwnersLoaded value)? ownersLoaded,
    TResult Function(_OwnersError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _OwnersListState implements OwnersListState {
  const factory _OwnersListState() = _$OwnersListStateImpl;
}

/// @nodoc
abstract class _$$OwnersLoadedImplCopyWith<$Res> {
  factory _$$OwnersLoadedImplCopyWith(
          _$OwnersLoadedImpl value, $Res Function(_$OwnersLoadedImpl) then) =
      __$$OwnersLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Owner> owners});
}

/// @nodoc
class __$$OwnersLoadedImplCopyWithImpl<$Res>
    extends _$OwnersListStateCopyWithImpl<$Res, _$OwnersLoadedImpl>
    implements _$$OwnersLoadedImplCopyWith<$Res> {
  __$$OwnersLoadedImplCopyWithImpl(
      _$OwnersLoadedImpl _value, $Res Function(_$OwnersLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? owners = null,
  }) {
    return _then(_$OwnersLoadedImpl(
      owners: null == owners
          ? _value._owners
          : owners // ignore: cast_nullable_to_non_nullable
              as List<Owner>,
    ));
  }
}

/// @nodoc

class _$OwnersLoadedImpl implements _OwnersLoaded {
  const _$OwnersLoadedImpl({required final List<Owner> owners})
      : _owners = owners;

  final List<Owner> _owners;
  @override
  List<Owner> get owners {
    if (_owners is EqualUnmodifiableListView) return _owners;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_owners);
  }

  @override
  String toString() {
    return 'OwnersListState.ownersLoaded(owners: $owners)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnersLoadedImpl &&
            const DeepCollectionEquality().equals(other._owners, _owners));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_owners));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnersLoadedImplCopyWith<_$OwnersLoadedImpl> get copyWith =>
      __$$OwnersLoadedImplCopyWithImpl<_$OwnersLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Owner> owners) ownersLoaded,
    required TResult Function() error,
  }) {
    return ownersLoaded(owners);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Owner> owners)? ownersLoaded,
    TResult? Function()? error,
  }) {
    return ownersLoaded?.call(owners);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Owner> owners)? ownersLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ownersLoaded != null) {
      return ownersLoaded(owners);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnersListState value) initial,
    required TResult Function(_OwnersLoaded value) ownersLoaded,
    required TResult Function(_OwnersError value) error,
  }) {
    return ownersLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersListState value)? initial,
    TResult? Function(_OwnersLoaded value)? ownersLoaded,
    TResult? Function(_OwnersError value)? error,
  }) {
    return ownersLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersListState value)? initial,
    TResult Function(_OwnersLoaded value)? ownersLoaded,
    TResult Function(_OwnersError value)? error,
    required TResult orElse(),
  }) {
    if (ownersLoaded != null) {
      return ownersLoaded(this);
    }
    return orElse();
  }
}

abstract class _OwnersLoaded implements OwnersListState {
  const factory _OwnersLoaded({required final List<Owner> owners}) =
      _$OwnersLoadedImpl;

  List<Owner> get owners;
  @JsonKey(ignore: true)
  _$$OwnersLoadedImplCopyWith<_$OwnersLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$OwnersErrorImplCopyWith<$Res> {
  factory _$$OwnersErrorImplCopyWith(
          _$OwnersErrorImpl value, $Res Function(_$OwnersErrorImpl) then) =
      __$$OwnersErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OwnersErrorImplCopyWithImpl<$Res>
    extends _$OwnersListStateCopyWithImpl<$Res, _$OwnersErrorImpl>
    implements _$$OwnersErrorImplCopyWith<$Res> {
  __$$OwnersErrorImplCopyWithImpl(
      _$OwnersErrorImpl _value, $Res Function(_$OwnersErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OwnersErrorImpl implements _OwnersError {
  const _$OwnersErrorImpl();

  @override
  String toString() {
    return 'OwnersListState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OwnersErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Owner> owners) ownersLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Owner> owners)? ownersLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Owner> owners)? ownersLoaded,
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
    required TResult Function(_OwnersListState value) initial,
    required TResult Function(_OwnersLoaded value) ownersLoaded,
    required TResult Function(_OwnersError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnersListState value)? initial,
    TResult? Function(_OwnersLoaded value)? ownersLoaded,
    TResult? Function(_OwnersError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnersListState value)? initial,
    TResult Function(_OwnersLoaded value)? ownersLoaded,
    TResult Function(_OwnersError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _OwnersError implements OwnersListState {
  const factory _OwnersError() = _$OwnersErrorImpl;
}
