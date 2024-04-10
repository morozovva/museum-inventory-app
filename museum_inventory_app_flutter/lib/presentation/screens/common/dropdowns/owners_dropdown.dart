import 'package:flutter/material.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/themes.dart';

//TODO add validation for empty field

class OwnersDropdownMenu extends StatelessWidget {
  const OwnersDropdownMenu({
    super.key,
    required this.ownerController,
    required this.owners,
    required this.onSelected,
  });

  final TextEditingController ownerController;
  final List<Owner> owners;
  final ValueChanged<int> onSelected;

  @override
  Widget build(BuildContext context) {
    return DropdownMenu(
      controller: ownerController,
      dropdownMenuEntries: owners
          .map(
            (e) => DropdownMenuEntry(
              value: e.id,
              label: e.fio,
            ),
          )
          .toList(),
      inputDecorationTheme: Themes().normalTextInputDecorationTheme(),
      requestFocusOnTap: false,
      label: const Text("Владелец"),
      expandedInsets: EdgeInsets.zero,
      onSelected: (val) {
        onSelected(val!);
      },
    );
  }
}
