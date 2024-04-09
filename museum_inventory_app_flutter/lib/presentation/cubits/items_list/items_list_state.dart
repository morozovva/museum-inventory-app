part of 'items_list_cubit.dart';

@freezed
class ItemsListState with _$ItemsListState {
  const factory ItemsListState.initial() = _ItemsListState;

  const factory ItemsListState.itemsLoaded({
    required List<Item> items,
  }) = _ItemsLoaded;

  const factory ItemsListState.error() = _ItemError;
}
