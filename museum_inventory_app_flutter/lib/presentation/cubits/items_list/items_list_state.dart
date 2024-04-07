part of 'items_list_cubit.dart';

@freezed
class ItemsListState with _$ItemsListState {
  const factory ItemsListState.initial({
    @Default([]) List<Item> items,
  }) = _ItemsListState;

  const factory ItemsListState.itemsLoaded({
    required List<Item> items,
  }) = _ItemsLoaded;

  const factory ItemsListState.itemRemoved({
    required List<Item> items,
  }) = _ItemRemoved;

  const factory ItemsListState.itemAdded({
    required List<Item> items,
  }) = _ItemAdded;
}
