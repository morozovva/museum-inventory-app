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
  List<Item> get items => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Item> items) initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function(List<Item> items) itemRemoved,
    required TResult Function(List<Item> items) itemAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Item> items)? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function(List<Item> items)? itemRemoved,
    TResult? Function(List<Item> items)? itemAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Item> items)? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function(List<Item> items)? itemRemoved,
    TResult Function(List<Item> items)? itemAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemAdded value) itemAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemAdded value)? itemAdded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemAdded value)? itemAdded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ItemsListStateCopyWith<ItemsListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemsListStateCopyWith<$Res> {
  factory $ItemsListStateCopyWith(
          ItemsListState value, $Res Function(ItemsListState) then) =
      _$ItemsListStateCopyWithImpl<$Res, ItemsListState>;
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class _$ItemsListStateCopyWithImpl<$Res, $Val extends ItemsListState>
    implements $ItemsListStateCopyWith<$Res> {
  _$ItemsListStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemsListStateImplCopyWith<$Res>
    implements $ItemsListStateCopyWith<$Res> {
  factory _$$ItemsListStateImplCopyWith(_$ItemsListStateImpl value,
          $Res Function(_$ItemsListStateImpl) then) =
      __$$ItemsListStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$ItemsListStateImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemsListStateImpl>
    implements _$$ItemsListStateImplCopyWith<$Res> {
  __$$ItemsListStateImplCopyWithImpl(
      _$ItemsListStateImpl _value, $Res Function(_$ItemsListStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemsListStateImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemsListStateImpl implements _ItemsListState {
  const _$ItemsListStateImpl({final List<Item> items = const []})
      : _items = items;

  final List<Item> _items;
  @override
  @JsonKey()
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsListState.initial(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemsListStateImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemsListStateImplCopyWith<_$ItemsListStateImpl> get copyWith =>
      __$$ItemsListStateImplCopyWithImpl<_$ItemsListStateImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Item> items) initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function(List<Item> items) itemRemoved,
    required TResult Function(List<Item> items) itemAdded,
  }) {
    return initial(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Item> items)? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function(List<Item> items)? itemRemoved,
    TResult? Function(List<Item> items)? itemAdded,
  }) {
    return initial?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Item> items)? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function(List<Item> items)? itemRemoved,
    TResult Function(List<Item> items)? itemAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemAdded value) itemAdded,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemAdded value)? itemAdded,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemAdded value)? itemAdded,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _ItemsListState implements ItemsListState {
  const factory _ItemsListState({final List<Item> items}) =
      _$ItemsListStateImpl;

  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$ItemsListStateImplCopyWith<_$ItemsListStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemsLoadedImplCopyWith<$Res>
    implements $ItemsListStateCopyWith<$Res> {
  factory _$$ItemsLoadedImplCopyWith(
          _$ItemsLoadedImpl value, $Res Function(_$ItemsLoadedImpl) then) =
      __$$ItemsLoadedImplCopyWithImpl<$Res>;
  @override
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
    required TResult Function(List<Item> items) initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function(List<Item> items) itemRemoved,
    required TResult Function(List<Item> items) itemAdded,
  }) {
    return itemsLoaded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Item> items)? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function(List<Item> items)? itemRemoved,
    TResult? Function(List<Item> items)? itemAdded,
  }) {
    return itemsLoaded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Item> items)? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function(List<Item> items)? itemRemoved,
    TResult Function(List<Item> items)? itemAdded,
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
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemAdded value) itemAdded,
  }) {
    return itemsLoaded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemAdded value)? itemAdded,
  }) {
    return itemsLoaded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemAdded value)? itemAdded,
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

  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$ItemsLoadedImplCopyWith<_$ItemsLoadedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemRemovedImplCopyWith<$Res>
    implements $ItemsListStateCopyWith<$Res> {
  factory _$$ItemRemovedImplCopyWith(
          _$ItemRemovedImpl value, $Res Function(_$ItemRemovedImpl) then) =
      __$$ItemRemovedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$ItemRemovedImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemRemovedImpl>
    implements _$$ItemRemovedImplCopyWith<$Res> {
  __$$ItemRemovedImplCopyWithImpl(
      _$ItemRemovedImpl _value, $Res Function(_$ItemRemovedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemRemovedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemRemovedImpl implements _ItemRemoved {
  const _$ItemRemovedImpl({required final List<Item> items}) : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsListState.itemRemoved(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemRemovedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      __$$ItemRemovedImplCopyWithImpl<_$ItemRemovedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Item> items) initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function(List<Item> items) itemRemoved,
    required TResult Function(List<Item> items) itemAdded,
  }) {
    return itemRemoved(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Item> items)? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function(List<Item> items)? itemRemoved,
    TResult? Function(List<Item> items)? itemAdded,
  }) {
    return itemRemoved?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Item> items)? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function(List<Item> items)? itemRemoved,
    TResult Function(List<Item> items)? itemAdded,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemAdded value) itemAdded,
  }) {
    return itemRemoved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemAdded value)? itemAdded,
  }) {
    return itemRemoved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemAdded value)? itemAdded,
    required TResult orElse(),
  }) {
    if (itemRemoved != null) {
      return itemRemoved(this);
    }
    return orElse();
  }
}

abstract class _ItemRemoved implements ItemsListState {
  const factory _ItemRemoved({required final List<Item> items}) =
      _$ItemRemovedImpl;

  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$ItemRemovedImplCopyWith<_$ItemRemovedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ItemAddedImplCopyWith<$Res>
    implements $ItemsListStateCopyWith<$Res> {
  factory _$$ItemAddedImplCopyWith(
          _$ItemAddedImpl value, $Res Function(_$ItemAddedImpl) then) =
      __$$ItemAddedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Item> items});
}

/// @nodoc
class __$$ItemAddedImplCopyWithImpl<$Res>
    extends _$ItemsListStateCopyWithImpl<$Res, _$ItemAddedImpl>
    implements _$$ItemAddedImplCopyWith<$Res> {
  __$$ItemAddedImplCopyWithImpl(
      _$ItemAddedImpl _value, $Res Function(_$ItemAddedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ItemAddedImpl(
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<Item>,
    ));
  }
}

/// @nodoc

class _$ItemAddedImpl implements _ItemAdded {
  const _$ItemAddedImpl({required final List<Item> items}) : _items = items;

  final List<Item> _items;
  @override
  List<Item> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ItemsListState.itemAdded(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemAddedImpl &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      __$$ItemAddedImplCopyWithImpl<_$ItemAddedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Item> items) initial,
    required TResult Function(List<Item> items) itemsLoaded,
    required TResult Function(List<Item> items) itemRemoved,
    required TResult Function(List<Item> items) itemAdded,
  }) {
    return itemAdded(items);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Item> items)? initial,
    TResult? Function(List<Item> items)? itemsLoaded,
    TResult? Function(List<Item> items)? itemRemoved,
    TResult? Function(List<Item> items)? itemAdded,
  }) {
    return itemAdded?.call(items);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Item> items)? initial,
    TResult Function(List<Item> items)? itemsLoaded,
    TResult Function(List<Item> items)? itemRemoved,
    TResult Function(List<Item> items)? itemAdded,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(items);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ItemsListState value) initial,
    required TResult Function(_ItemsLoaded value) itemsLoaded,
    required TResult Function(_ItemRemoved value) itemRemoved,
    required TResult Function(_ItemAdded value) itemAdded,
  }) {
    return itemAdded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ItemsListState value)? initial,
    TResult? Function(_ItemsLoaded value)? itemsLoaded,
    TResult? Function(_ItemRemoved value)? itemRemoved,
    TResult? Function(_ItemAdded value)? itemAdded,
  }) {
    return itemAdded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ItemsListState value)? initial,
    TResult Function(_ItemsLoaded value)? itemsLoaded,
    TResult Function(_ItemRemoved value)? itemRemoved,
    TResult Function(_ItemAdded value)? itemAdded,
    required TResult orElse(),
  }) {
    if (itemAdded != null) {
      return itemAdded(this);
    }
    return orElse();
  }
}

abstract class _ItemAdded implements ItemsListState {
  const factory _ItemAdded({required final List<Item> items}) = _$ItemAddedImpl;

  @override
  List<Item> get items;
  @override
  @JsonKey(ignore: true)
  _$$ItemAddedImplCopyWith<_$ItemAddedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
