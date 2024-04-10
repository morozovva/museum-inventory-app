import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/colors.dart';
import '../../cubits/employee_list/employee_list_cubit.dart';
import 'employee_screen.dart';

class EmployeeListTile extends StatelessWidget {
  const EmployeeListTile({
    super.key,
    required this.employee,
  });

  final Employee employee;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      tileColor: listTileBackground,
      title: Text(employee.name),
      leading: const Icon(Icons.satellite_outlined),
      // trailing: IconButton(
      //   onPressed: () {
      //     if (employee.id != null) {
      //       context.read<EmployeeListCubit>().removeEmployee(employee.id!);
      //     }
      //   },
      //   icon: const Icon(
      //     Icons.delete_outline_outlined,
      //   ),
      // ),
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return EmployeeScreen(employee: employee);
        }));
      },
    );
  }
}
