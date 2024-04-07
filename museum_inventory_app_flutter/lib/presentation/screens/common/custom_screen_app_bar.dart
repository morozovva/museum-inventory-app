import 'package:flutter/material.dart';

class CustomScreenAppBar extends StatelessWidget {
  const CustomScreenAppBar({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70, left: 92, bottom: 40),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              size: 40,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          const SizedBox(
            width: 24,
          ),
          Text(
            text,
            style: Theme.of(context).textTheme.displayMedium,
          ),
        ],
      ),
    );
  }
}
