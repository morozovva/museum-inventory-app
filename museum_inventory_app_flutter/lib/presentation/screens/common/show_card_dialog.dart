import 'package:flutter/material.dart';

Future<dynamic> showCardDialog(BuildContext context, Widget card) {
  return showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return Dialog(
        child: card,
      );
    },
  );
}
