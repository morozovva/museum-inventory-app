import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'items_list_cubit.freezed.dart';
part 'items_list_state.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  ItemsListCubit() : super(const ItemsListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final items = await client.items.getAllItems();
      emit(ItemsListState.itemsLoaded(items: items));
    } catch (e) {
      emit(const ItemsListState.error());
      print(e);
    }
  }

  void removeItem(int id) async {
    await client.items.deleteItem(id);
    _load();
  }

  void addOrUpdateItem(Item item) async {
    if (item.id == null) {
      await client.items.createItem(item);
    } else {
      await client.items.updateItem(item);
    }
    _load();
  }
}
