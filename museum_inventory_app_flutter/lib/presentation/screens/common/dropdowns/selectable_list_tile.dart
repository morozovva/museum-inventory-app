import 'package:flutter/material.dart';

import '../../../../core/colors.dart';

class SelectableListTile extends StatelessWidget {
  const SelectableListTile({
    super.key,
    required this.name,
    required this.function,
  });

  final String name;
  final VoidCallback function;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: listTileBackground,
      ),
      child: InkWell(
        onTap: function,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8),
                child: Icon(Icons.satellite_outlined),
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
