import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'owners_application_list_state.dart';
part 'owners_application_list_cubit.freezed.dart';

class OwnersApplicationListCubit extends Cubit<OwnersApplicationListState> {
  OwnersApplicationListCubit()
      : super(const OwnersApplicationListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final ownersApplication =
          await client.ownersApplication.getAllOwnersApplications();
      emit(OwnersApplicationListState.ownersApplicationLoaded(
          ownersApplication: ownersApplication));
    } catch (e) {
      emit(const OwnersApplicationListState.error());
      print(e);
    }
  }

  void removeOwnersApplication(int id) async {
    await client.ownersApplication.deleteOwnersApplication(id);
    _load();
  }

  void addOrUpdateOwner(OwnersApplication ownersApplication) async {
    if (ownersApplication.id == null) {
      await client.ownersApplication.createOwnersApplication(ownersApplication);
    } else {
      await client.ownersApplication.updateOwnersApplication(ownersApplication);
    }
    _load();
  }
}
