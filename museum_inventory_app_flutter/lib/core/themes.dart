import 'package:flutter/material.dart';

import 'colors.dart';

class Themes {
  var appsTheme = ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: Colors.white,
    navigationDrawerTheme: const NavigationDrawerThemeData(
      backgroundColor: lightGrey,
      surfaceTintColor: Colors.white,
    ),
    colorScheme: ColorScheme.fromSeed(
      seedColor: darkMain,
      secondary: darkMain,
      background: Colors.white,
      brightness: Brightness.light,
      surfaceTint: Colors.white,
    ),
  );

  ButtonStyle loginButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        fixedSize: Size(MediaQuery.of(context).size.width, 56),
        backgroundColor: darkMain,
        foregroundColor: Colors.white,
      );

  ButtonStyle writeButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        fixedSize: const Size(264, 40),
        backgroundColor: darkMain,
        foregroundColor: Colors.white,
        textStyle: Theme.of(context).textTheme.labelLarge,
      );

  ButtonStyle writeSmallButtonStyle(BuildContext context) =>
      ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
        fixedSize: const Size(168, 52),
        backgroundColor: darkMain,
        foregroundColor: Colors.white,
        textStyle: Theme.of(context).textTheme.labelLarge,
      );

  InputDecoration normalTextInputDecoration(String text) => InputDecoration(
        label: Text(text),
        alignLabelWithHint: true,
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
      );

  InputDecorationTheme normalTextInputDecorationTheme() =>
      const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(vertical: 18.5, horizontal: 12),
        alignLabelWithHint: true,
        labelStyle: TextStyle(
          fontWeight: FontWeight.normal,
          color: greySecondary,
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: greySecondary,
          ),
        ),
      );

  // InputDecoration calendarTextInputDecoration(
  //     BuildContext context, String text, TextEditingController controller) {
  //   return InputDecoration(
  //     labelStyle: const TextStyle(
  //       color: greySecondary,
  //     ),
  //     enabledBorder: const OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: greySecondary,
  //       ),
  //     ),
  //     focusedBorder: const OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: greySecondary,
  //       ),
  //     ),
  //     errorBorder: const OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: errorRed,
  //       ),
  //     ),
  //     focusedErrorBorder: const OutlineInputBorder(
  //       borderSide: BorderSide(
  //         color: errorRed,
  //       ),
  //     ),
  //     labelText: text,
  //     suffixIcon: IconButton(
  //       icon: const Icon(Icons.calendar_month_outlined),
  //       onPressed: () => showDatePicker(
  //               initialDatePickerMode: DatePickerMode.day,
  //               context: context,
  //               initialDate: DateTime.now().subtract(const Duration(days: 365)),
  //               firstDate: DateTime(1900),
  //               lastDate: DateTime.now().subtract(const Duration(days: 365)))
  //           .then(
  //         (value) => {
  //           controller.text =
  //               '${value!.day.toString()}.${value.month.toString()}.${value.year.toString()}',
  //         },
  //       ),
  //     ),
  //   );
  // }
}
