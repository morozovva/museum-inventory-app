import 'package:flutter/material.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/themes.dart';

import '../common/card_heading.dart';
import '../common/file_upload_form_field.dart';

class OwnersApplicationCard extends StatefulWidget {
  const OwnersApplicationCard({
    super.key,
    this.ownersApplication,
  });

  final OwnersApplication? ownersApplication;

  @override
  State<OwnersApplicationCard> createState() => _ItemCardState();
}

class _ItemCardState extends State<OwnersApplicationCard> {
  final TextEditingController _fileController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey();

  @override
  void initState() {
    // if (widget.owner != null) {
    //   _fioController.text = widget.owner!.fio;
    //   _phoneController.text = widget.owner!.phoneNumber;
    //   _mailController.text = widget.owner!.mail;
    //   _dateOfBirthController.text =
    //       DateFormat('dd.MM.yyyy').format(widget.owner!.dateOfBirth.toLocal());
    //   _addressController.text = widget.owner!.homeAddress;
    // }
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
      height: 500,
      padding: const EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CardHeading(
            heading: widget.ownersApplication?.id != null
                ? "Заявление No${widget.ownersApplication!.id}"
                : "Новое заявление",
            text: "Новое заявление владельца",
          ),
          const SizedBox(height: 32),
          Expanded(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  FileUploadFormField(
                    title: "Файл заявления",
                    directoryName: "owners_application",
                    controller: _fileController,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneController,
                    decoration:
                        Themes().normalTextInputDecoration("Номер телефона"),
                    validator: (value) =>
                        _phoneController.text.isEmpty ? "Заполните поле" : null,
                  ),
                  const SizedBox(height: 16),
                ],
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pop(context);
              }
            },
            style: Themes().writeSmallButtonStyle(context),
            child: const Text("Записать"),
          ),
        ],
      ),
    );
  }
}
