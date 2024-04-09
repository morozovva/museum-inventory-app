// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'items_list_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ItemsListState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsListStateCopyWith<$Res> {
  factory $ItemsListStateCopyWith(
          ItemsListState value, $Res Function(ItemsListState) then) =
      _$ItemsListStateCopyWithImpl<$Res, ItemsListState>;
}

/// @nodoc
class _$ItemsListStateCopyWithImpl<$Res, $Val extends ItemsListState>
    implements $ItemsListStateCopyWith<$Res> {
  _$ItemsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ItemsListStateImplCopyWith<$Res> {
  factory _$$ItemsListStateImplCopyWith(_$ItemsListStateImpl value,
          $Res Function(_$ItemsListStateImpl) then) =
      __$$ItemsListStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemsListStateImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemsListStateImpl>
    implements _$$ItemsListStateImplCopyWith<$Res> {
  __$$ItemsListStateImplCopyWithImpl(
      _$ItemsListStateImpl _value, $Res Function(_$ItemsListStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemsListStateImpl implements _ItemsListState {
  const _$ItemsListStateImpl();

  @override
  String toString() {
    return 'ItemsListState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemsListStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function() error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function()? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? itemsLoaded,
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
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemError value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemError value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemError value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ItemsListState implements ItemsListState {
  const factory _ItemsListState() = _$ItemsListStateImpl;
}

/// @nodoc
abstract class _$$ItemsLoadedImplCopyWith<$Res> {
  factory _$$ItemsLoadedImplCopyWith(
          _$ItemsLoadedImpl value, $Res Function(_$ItemsLoadedImpl) then) =
      __$$ItemsLoadedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$ItemsLoadedImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemsLoadedImpl>
    implements _$$ItemsLoadedImplCopyWith<$Res> {
  __$$ItemsLoadedImplCopyWithImpl(
      _$ItemsLoadedImpl _value, $Res Function(_$ItemsLoadedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemsLoadedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemsLoadedImpl implements _ItemsLoaded {
  const _$ItemsLoadedImpl({required final List<Item> items}) : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsListState.itemsLoaded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsLoadedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsLoadedImplCopyWith<_$ItemsLoadedImpl> get copyWith =>
      __$$ItemsLoadedImplCopyWithImpl<_$ItemsLoadedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function() error,
  }) {
    return itemsLoaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function()? error,
  }) {
    return itemsLoaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (itemsLoaded != null) {
      return itemsLoaded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemError value) error,
  }) {
    return itemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemError value)? error,
  }) {
    return itemsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemError value)? error,
    required TResult orElse(),
  }) {
    if (itemsLoaded != null) {
      return itemsLoaded(this);
    }
    return orElse();
  }
}

abstract class _ItemsLoaded implements ItemsListState {
  const factory _ItemsLoaded({required final List<Item> items}) =
      _$ItemsLoadedImpl;

  List<Item> get items;
  @JsonKey(ignore: true)
  _$$ItemsLoadedImplCopyWith<_$ItemsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemErrorImplCopyWith<$Res> {
  factory _$$ItemErrorImplCopyWith(
          _$ItemErrorImpl value, $Res Function(_$ItemErrorImpl) then) =
      __$$ItemErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ItemErrorImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemErrorImpl>
    implements _$$ItemErrorImplCopyWith<$Res> {
  __$$ItemErrorImplCopyWithImpl(
      _$ItemErrorImpl _value, $Res Function(_$ItemErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ItemErrorImpl implements _ItemError {
  const _$ItemErrorImpl();

  @override
  String toString() {
    return 'ItemsListState.error()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ItemErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<Item> items)? itemsLoaded,
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
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ItemError implements ItemsListState {
  const factory _ItemError() = _$ItemErrorImpl;
}
