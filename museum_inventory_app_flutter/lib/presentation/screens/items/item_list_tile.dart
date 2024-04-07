import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/colors.dart';
import '../../cubits/items_list/items_list_cubit.dart';
import '../common/show_card_dialog.dart';
import 'item_card.dart';

class ItemListTile extends StatelessWidget {
  const ItemListTile({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      tileColor: listTileBackground,
      title: Text(item.name),
      leading: const Icon(Icons.satellite_outlined),
      trailing: IconButton(
        onPressed: () {
          if (item.id != null) {
            context.read<ItemsListCubit>().removeItem(item.id!);
          }
        },
        icon: const Icon(
          Icons.delete_outline_outlined,
        ),
      ),
      onTap: () {
        showCardDialog(
          context,
          ItemCard(
            item: item,
          ),
        );
      },
    );
  }
}
