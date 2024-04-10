import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'owners_application_state.dart';
part 'owners_application_cubit.freezed.dart';

class OwnersApplicationCubit extends Cubit<OwnersApplicationState> {
  OwnersApplicationCubit() : super(const OwnersApplicationState.initial());

  final Set<int> _itemsIdsInOwnersApplication = {};

  Set<int> get itemsIdsInOwnersApplication => _itemsIdsInOwnersApplication;

  Future<List<Owner>> getOwners() async {
    return await client.owners.getAllOwners();
  }

  Future<List<Item>> getItems() async {
    return await client.items.getItemsWithNoOwnersApplication();
  }

  void setItem(int id) {
    _itemsIdsInOwnersApplication.add(id);
    emit(OwnersApplicationState.formChanged(
        itemIds: Set.from(_itemsIdsInOwnersApplication)));
  }

  void removeItemFromApplication(int id) {
    _itemsIdsInOwnersApplication.remove(id);
    emit(OwnersApplicationState.formChanged(
        itemIds: Set.from(_itemsIdsInOwnersApplication)));
  }

  void clearItemsSet() {
    _itemsIdsInOwnersApplication.clear();
    emit(OwnersApplicationState.formChanged(
        itemIds: Set.from(_itemsIdsInOwnersApplication)));
  }

  void saveNewOwnerApplication(String filePath, int ownerId) async {
    final ownerApplication =
        OwnersApplication(file: filePath, ownerId: ownerId);
    final newApplicationId = await client.ownersApplication
        .createOwnersApplication(ownerApplication);
    for (var element in _itemsIdsInOwnersApplication) {
      client.items.setItemsOwnersApplication(element, newApplicationId);
    }
  }
}
