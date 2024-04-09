import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/employee_list/employee_list_cubit.dart';

import '../../../data/enums/user_role.dart';
import '../../../core/themes.dart';
import '../common/calendar_text_form_field.dart';
import '../common/custom_screen_app_bar.dart';

class EmployeeScreen extends StatefulWidget {
  const EmployeeScreen({super.key, this.employee});

  final Employee? employee;

  static const routeName = "/employee-screen";

  @override
  State<EmployeeScreen> createState() => _EmployeeScreenState();
}

class _EmployeeScreenState extends State<EmployeeScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _surnameController = TextEditingController();
  TextEditingController _patronymicController = TextEditingController();
  TextEditingController _roleController = TextEditingController();
  TextEditingController _dateOfBirthController = TextEditingController();
  TextEditingController _mailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _accepnanceController = TextEditingController();
  TextEditingController _dismissalController = TextEditingController();

  @override
  void initState() {
    if (widget.employee != null) {
      _nameController = TextEditingController(text: widget.employee?.name);
      _surnameController =
          TextEditingController(text: widget.employee?.surname);
      _patronymicController =
          TextEditingController(text: widget.employee?.patronymic);
      _roleController =
          TextEditingController(text: widget.employee?.position?.name);
      _dateOfBirthController = TextEditingController(
          text: DateFormat('dd.MM.yyyy')
              .format(widget.employee!.dateOfBirth.toLocal()));
      _mailController = TextEditingController(text: widget.employee?.mail);
      _phoneController =
          TextEditingController(text: widget.employee?.phoneNumber);
      _accepnanceController = TextEditingController(
          text: DateFormat('dd.MM.yyyy')
              .format(widget.employee!.acceptanceDate.toLocal()));
      if (widget.employee!.dismissalDate != null) {
        _dismissalController = TextEditingController(
            text: DateFormat('dd.MM.yyyy')
                .format(widget.employee!.dismissalDate!.toLocal()));
      }
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomScreenAppBar(
            text: widget.employee?.name ?? "Новый сотрудник",
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 156),
            child: Form(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Flexible(
                    fit: FlexFit.tight,
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        TextFormField(
                          controller: _nameController,
                          decoration: Themes().normalTextInputDecoration("Имя"),
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Заполните поле';
                            }
                            return null;
                          },
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: _surnameController,
                          decoration:
                              Themes().normalTextInputDecoration("Фамилия"),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: _patronymicController,
                          decoration:
                              Themes().normalTextInputDecoration("Отчество"),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        DropdownMenu(
                            controller: _roleController,
                            dropdownMenuEntries: UserRole.values
                                .map((e) => DropdownMenuEntry(
                                    value: e, label: e.roleTitle()))
                                .toList(),
                            inputDecorationTheme:
                                Themes().normalTextInputDecorationTheme(),
                            requestFocusOnTap: false,
                            label: const Text("Должность"),
                            expandedInsets: EdgeInsets.zero),
                        const SizedBox(
                          height: 24,
                        ),
                        CalendarTextFormField(
                            controller: _dateOfBirthController,
                            text: "Дата рождения"),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: _mailController,
                          decoration: Themes()
                              .normalTextInputDecoration("Электронная почта"),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        TextFormField(
                          controller: _phoneController,
                          decoration: Themes()
                              .normalTextInputDecoration("Номер телефона"),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Employee employee = Employee(
                              name: _nameController.text,
                              surname: _surnameController.text,
                              patronymic: _patronymicController.text,
                              dateOfBirth: DateFormat('dd.MM.yyyy')
                                  .parse(_dateOfBirthController.text),
                              mail: _mailController.text,
                              phoneNumber: _phoneController.text,
                              id: widget.employee?.id,
                              acceptanceDate: DateTime.now(),
                              positionId: 1,
                            );
                            context
                                .read<EmployeeListCubit>()
                                .addOrUpdateEmployee(employee);
                            Navigator.pop(context);
                          },
                          style: Themes().writeButtonStyle(context),
                          child: const Text("Записать"),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 24,
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CalendarTextFormField(
                          controller: _accepnanceController,
                          text: "Дата приема",
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        CalendarTextFormField(
                          controller: _dismissalController,
                          text: "Дата увольнения",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
