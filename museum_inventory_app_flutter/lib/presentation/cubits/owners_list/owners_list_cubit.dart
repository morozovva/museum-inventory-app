import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'owners_list_state.dart';
part 'owners_list_cubit.freezed.dart';

class OwnersListCubit extends Cubit<OwnersListState> {
  OwnersListCubit() : super(const OwnersListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final owners = await client.owners.getAllOwners();
      emit(OwnersListState.ownersLoaded(owners: owners));
    } catch (e) {
      emit(const OwnersListState.error());
      print(e);
    }
  }

  void removeOwner(int id) async {
    await client.owners.deleteOwner(id);
    _load();
  }

  void addOrUpdateOwner(Owner owner) async {
    if (owner.id == null) {
      await client.owners.createOwner(owner);
    } else {
      await client.owners.updateOwner(owner);
    }
    _load();
  }
}
