import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../main.dart';

part 'employee_list_cubit.freezed.dart';
part 'employee_list_state.dart';

class EmployeeListCubit extends Cubit<EmployeeListState> {
  EmployeeListCubit() : super(const EmployeeListState.initial()) {
    _load();
  }

  void _load() async {
    try {
      final employees = await client.employee.getAllEmployees();
      emit(EmployeeListState.employeesLoaded(employees: employees));
    } catch (e) {
      emit(const EmployeeListState.error());
      print(e);
    }
  }

  void removeEmployee(int id) async {
    await client.employee.deleteEmployee(id);
    _load();
  }

  void addOrUpdateEmployee(Employee employee) async {
    if (employee.id == null) {
      await client.employee.createEmployee(employee);
    } else {
      await client.employee.updateEmployee(employee);
    }
    _load();
  }
}
