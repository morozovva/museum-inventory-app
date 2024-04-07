import 'package:flutter/material.dart';

class CardHeading extends StatelessWidget {
  const CardHeading({
    super.key,
    required this.heading,
    required this.text,
  });

  final String? heading;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(
        heading != null ? heading! : text,
        overflow: TextOverflow.ellipsis,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: const Icon(Icons.cancel_outlined),
      ),
    ]);
  }
}
