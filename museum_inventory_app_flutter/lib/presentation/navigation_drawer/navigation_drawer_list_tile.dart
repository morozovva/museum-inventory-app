import 'package:flutter/material.dart';

import '../../core/colors.dart';

class NavigationDrawerListTile extends StatelessWidget {
  const NavigationDrawerListTile({
    super.key,
    required this.title,
    required this.isSelected,
    required this.hasCircle,
  });

  final String title;
  final bool isSelected;
  final bool hasCircle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100)),
      leading: hasCircle
          ? const Icon(
              Icons.circle,
              size: 12,
            )
          : null,
      title: Text(
        title,
        style: Theme.of(context).textTheme.labelLarge,
      ),
      selected: isSelected,
      selectedColor: darkMain,
      selectedTileColor: middleGrey,
      // onTap: () {},
    );
  }
}
