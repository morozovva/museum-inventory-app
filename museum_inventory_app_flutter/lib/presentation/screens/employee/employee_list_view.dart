import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/employee_list/employee_list_cubit.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/employee/employee_list_tile.dart';
import '../common/state_screens/error_screen.dart';
import '../common/state_screens/loading_screen.dart';
import 'employee_screen.dart';

class EmployeesListView extends StatelessWidget {
  const EmployeesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 24),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Сотрудники",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EmployeeScreen.routeName);
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: BlocBuilder<EmployeeListCubit, EmployeeListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    employeesLoaded: (employees) {
                      final employeeList = employees.reversed.toList();
                      return ListView.builder(
                        itemCount: employeeList.length,
                        padding: const EdgeInsets.only(bottom: 8),
                        itemBuilder: (context, index) {
                          return EmployeeListTile(
                            employee: employeeList[index],
                          );
                        },
                      );
                    },
                    error: () {
                      return const ErrorScreen();
                    },
                    orElse: () {
                      return const LoadingScreen();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
