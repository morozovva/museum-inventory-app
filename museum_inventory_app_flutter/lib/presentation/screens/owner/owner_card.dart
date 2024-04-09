import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:intl/intl.dart';
import '../../../../core/themes.dart';
import '../../cubits/owners_list/owners_list_cubit.dart';
import '../common/calendar_text_form_field.dart';
import '../common/card_heading.dart';

class OwnerCard extends StatefulWidget {
  const OwnerCard({
    super.key,
    required this.owner,
  });

  final Owner? owner;

  @override
  State<OwnerCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<OwnerCard> {
  final TextEditingController _fioController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _dateOfBirthController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    if (widget.owner != null) {
      _fioController.text = widget.owner!.fio;
      _phoneController.text = widget.owner!.phoneNumber;
      _mailController.text = widget.owner!.mail;
      _dateOfBirthController.text =
          DateFormat('dd.MM.yyyy').format(widget.owner!.dateOfBirth.toLocal());
      _addressController.text = widget.owner!.homeAddress;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      width: 450,
      height: 680,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CardHeading(
            heading: widget.owner?.fio,
            text: "Новый владелец",
          ),
          const SizedBox(
            height: 32,
          ),
          Form(
              key: _formKey,
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 40 - 24),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: _fioController,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      decoration: Themes().normalTextInputDecoration("ФИО"),
                      validator: (value) {
                        return _fioController.text.isEmpty
                            ? "Заполните поле"
                            : null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _phoneController,
                      decoration:
                          Themes().normalTextInputDecoration("Номер телефона"),
                      validator: (value) {
                        return _phoneController.text.isEmpty
                            ? "Заполните поле"
                            : null;
                      },
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _mailController,
                      decoration: Themes()
                          .normalTextInputDecoration("Электронная почта"),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    CalendarTextFormField(
                      controller: _dateOfBirthController,
                      text: "Дата рождения",
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      controller: _addressController,
                      decoration: Themes()
                          .normalTextInputDecoration("Адрес проживания"),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Заполните поле';
                        }
                        return null;
                      },
                    ),
                  ],
                ),
              )),
          const SizedBox(
            height: 32,
          ),
          ElevatedButton(
            onPressed: () {
              if (!_formKey.currentState!.validate()) {
                return;
              }
              final owner = Owner(
                id: widget.owner?.id,
                fio: _fioController.text,
                phoneNumber: _phoneController.text,
                mail: _mailController.text,
                dateOfBirth: DateFormat('dd.MM.yyyy')
                    .parseStrict(_dateOfBirthController.text)
                    .toLocal(),
                homeAddress: _addressController.text,
              );
              context.read<OwnersListCubit>().addOrUpdateOwner(owner);
              Navigator.pop(context);
            },
            style: Themes().writeSmallButtonStyle(context),
            child: const Text("Записать"),
          ),
        ],
      ),
    );
  }
}
