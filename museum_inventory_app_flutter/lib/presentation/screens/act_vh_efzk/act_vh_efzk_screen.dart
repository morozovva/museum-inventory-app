import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/act_vh_efzk_list/act_vh_efzk_list_cubit.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/employee_list/employee_list_cubit.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/common/dropdowns/employees_dropdown.dart';

import '../../../data/enums/user_role.dart';
import '../../../core/themes.dart';
import '../common/calendar_text_form_field.dart';
import '../common/custom_screen_app_bar.dart';

class ActVhEfzkScreen extends StatefulWidget {
  const ActVhEfzkScreen({super.key, this.actVhEfzk});

  final ActVHEFZK? actVhEfzk;

  static const routeName = "/act-vh-efzk-screen";

  @override
  State<ActVhEfzkScreen> createState() => _ActVhEfzkScreenState();
}

class _ActVhEfzkScreenState extends State<ActVhEfzkScreen> {
  TextEditingController _basisController = TextEditingController();
  TextEditingController _noteController = TextEditingController();
  TextEditingController _employeeController = TextEditingController();
  TextEditingController _dateController = TextEditingController();

  List<Employee> _employees = [];

  @override
  void initState() {
    _fetchEmployees();
    if (widget.actVhEfzk != null) {
      _basisController = TextEditingController(text: widget.actVhEfzk?.basis);
      _noteController = TextEditingController(text: widget.actVhEfzk?.note);
      _employeeController = TextEditingController(
          text:
              "${widget.actVhEfzk?.employee?.surname} ${widget.actVhEfzk?.employee?.name} ${widget.actVhEfzk?.employee?.patronymic}");
      _dateController = TextEditingController(
          text: DateFormat('dd.MM.yyyy')
              .format(widget.actVhEfzk!.date.toLocal()));
    }

    super.initState();
  }

  void _fetchEmployees() async {
    final employees = await context.read<ActVhEfzkListCubit>().getEmployees();
    setState(() {
      _employees = employees;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          CustomScreenAppBar(
            text: widget.actVhEfzk?.id != null
                ? "Акт ВХ ЭФЗК${widget.actVhEfzk?.id}"
                : "Новый акт ВХ ЭФЗК",
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
                          controller: _basisController,
                          minLines: 5,
                          maxLines: 5,
                          decoration: Themes().normalTextInputDecoration(
                              "Основание к составлению акта"),
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
                          controller: _noteController,
                          decoration:
                              Themes().normalTextInputDecoration("Примечание"),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        EmployeesDropdownMenu(
                            employeeController: _employeeController,
                            employees: _employees),
                        const SizedBox(
                          height: 24,
                        ),
                        ElevatedButton(
                          onPressed: () {
                            // ActVhEfzk employee = ActVhEfzk(
                            //   name: _nameController.text,
                            //   surname: _surnameController.text,
                            //   patronymic: _patronymicController.text,
                            //   dateOfBirth: DateFormat('dd.MM.yyyy')
                            //       .parse(_dateOfBirthController.text),
                            //   mail: _mailController.text,
                            //   phoneNumber: _phoneController.text,
                            //   id: widget.employee?.id,
                            //   acceptanceDate: DateTime.now(),
                            //   positionId: UserRole.values
                            //       .firstWhere((element) =>
                            //           element.roleTitle() ==
                            //           _roleController.text)
                            //       .index,
                            // );
                            // context
                            //     .read<ActVhEfzkListCubit>()
                            //     .addOrUpdateActVhEfzk(employee);
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
                          controller: _dateController,
                          text: "Дата",
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
