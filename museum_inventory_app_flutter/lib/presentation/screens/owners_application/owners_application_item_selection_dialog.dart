import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../cubits/owners_application/owners_application_cubit.dart';
import '../common/dropdowns/selectable_list_tile.dart';

class OwnersApplicationItemsSelectionDialog extends StatelessWidget {
  const OwnersApplicationItemsSelectionDialog({
    super.key,
    required this.items,
  });

  final List<Item> items;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 400,
        height: 300,
        padding: const EdgeInsets.all(16),
        child: ListView.builder(
            itemCount: items.length,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return SelectableListTile(
                name: items[index].name,
                function: () {
                  context
                      .read<OwnersApplicationCubit>()
                      .setItem(items[index].id!);
                  Navigator.of(context).pop();
                },
              );
            }));
  }
}
