import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class CalendarTextFormField extends StatelessWidget {
  const CalendarTextFormField({
    super.key,
    required this.controller,
    required this.text,
  });

  final TextEditingController controller;
  final String text;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true,
      decoration: InputDecoration(
        labelStyle: const TextStyle(
          color: greySecondary,
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: errorRed,
          ),
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: errorRed,
          ),
        ),
        labelText: text,
        suffixIcon: IconButton(
          icon: const Icon(Icons.calendar_month_outlined),
          onPressed: () => showDatePicker(
                  initialDatePickerMode: DatePickerMode.day,
                  context: context,
                  initialDate:
                      DateTime.now().subtract(const Duration(days: 365)),
                  firstDate: DateTime(1900),
                  lastDate: DateTime.now().subtract(const Duration(days: 365)))
              .then(
            (value) => {
              controller.text =
                  '${value!.day.toString()}.${value.month.toString()}.${value.year.toString()}',
            },
          ),
        ),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Заполните поле';
        }
        return null;
      },
      controller: controller,
    );
  }
}
