import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class ErrorScreen extends StatelessWidget {
  const ErrorScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const Icon(
            Icons.error_outline,
            color: errorRed,
            size: 100,
          ),
          const SizedBox(
            height: 32,
          ),
          Text(
            "Произошла ошибка \nподключения к серверу.",
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ],
      ),
    );
  }
}
