import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'act_vh_efzk_list_cubit.freezed.dart';
part 'act_vh_efzk_list_state.dart';

class ActVhEfzkListCubit extends Cubit<ActVhEfzkListState> {
  ActVhEfzkListCubit() : super(const ActVhEfzkListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final actVhEfzks = await client.actVhEfzk.getAllActVhEfzks();
      emit(ActVhEfzkListState.actVhEfzksLoaded(actVhEfzks: actVhEfzks));
    } catch (e) {
      emit(const ActVhEfzkListState.error());
      print(e);
    }
  }

  void removeActVhEfzk(int id) async {
    await client.actVhEfzk.deleteActVhEfzk(id);
    _load();
  }

  Future<List<Employee>> getEmployees() async {
    return client.employee.getWorkingEmployees();
  }

  void addOrUpdateActVhEfzk(ActVHEFZK actVhEfzk) async {
    if (actVhEfzk.id == null) {
      await client.actVhEfzk.createActVhEfzk(actVhEfzk);
    } else {
      await client.actVhEfzk.updateActVhEfzk(actVhEfzk);
    }
    _load();
  }
}
