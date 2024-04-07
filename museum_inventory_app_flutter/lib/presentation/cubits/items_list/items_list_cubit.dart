import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'items_list_state.dart';
part 'items_list_cubit.freezed.dart';

class ItemsListCubit extends Cubit<ItemsListState> {
  ItemsListCubit() : super(const ItemsListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final _items = await client.items.getAllItems();
    } catch (e) {
      print(e);
    }
  }

  void removeItem(int id) {
    emit(ItemsListState.itemRemoved(items: state.items));
  }

  void addOrUpdateItem(Item item) async {
    if (item.id == null) {
      await client.items.createItem(item);
      // final newItem = Item(
      //   title: title,
      //   integrity: integrity,
      //   appearance: appearance,
      //   origin: origin,
      // );
      // _repository.createItem(newItem);
    } else {
      await client.items.updateItem(item);
      // _repository.updateItem(
      //   id,
      //   title,
      //   integrity,
      //   appearance,
      //   origin,
      // );
    }
  }
}
