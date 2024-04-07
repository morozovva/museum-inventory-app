import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/colors.dart';
import '../common/show_card_dialog.dart';
import 'owner_card.dart';

class OwnerListTile extends StatelessWidget {
  const OwnerListTile({
    super.key,
    required this.owner,
  });

  final Owner owner;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      tileColor: listTileBackground,
      title: Text(owner.fio),
      leading: const Icon(Icons.file_open_outlined),
      trailing: IconButton(
          onPressed: () {
            // context.read<OwnersListCubit>().removeOwner(owner.id);
          },
          icon: const Icon(Icons.delete_outline_outlined)),
      onTap: () {
        showCardDialog(
          context,
          OwnerCard(
            owner: owner,
          ),
        );
      },
    );
  }
}
