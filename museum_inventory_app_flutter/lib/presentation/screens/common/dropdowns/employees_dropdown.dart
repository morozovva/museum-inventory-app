import 'package:flutter/material.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/themes.dart';

//TODO add validation for empty field

class EmployeesDropdownMenu extends StatelessWidget {
  const EmployeesDropdownMenu({
    super.key,
    required TextEditingController employeeController,
    required List<Employee> employees,
  })  : _employeeController = employeeController,
        _employees = employees;

  final TextEditingController _employeeController;
  final List<Employee> _employees;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      controller: _employeeController,
      dropdownMenuEntries: _employees
          .map(
            (e) => DropdownMenuEntry(
              value: e.id,
              label: "${e.surname} ${e.name} ${e.patronymic}",
            ),
          )
          .toList(),
      inputDecorationTheme: Themes().normalTextInputDecorationTheme(),
      requestFocusOnTap: false,
      label: const Text("Сотрудник"),
      expandedInsets: EdgeInsets.zero,
    );
  }
}
