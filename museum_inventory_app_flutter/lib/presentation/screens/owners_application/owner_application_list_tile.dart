import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';

import '../../../../core/colors.dart';
import '../../cubits/owners_list/owners_list_cubit.dart';

class OwnersApplicationListTile extends StatelessWidget {
  const OwnersApplicationListTile({
    super.key,
    required this.ownersApplication,
  });

  final OwnersApplication ownersApplication;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      tileColor: listTileBackground,
      title: Text(ownersApplication.id == null
          ? "Новое заявление"
          : "Заявление №${ownersApplication.id.toString()}"),
      leading: const Icon(Icons.file_open_outlined),
      trailing: IconButton(
          onPressed: () {
            if (ownersApplication.id != null) {
              context
                  .read<OwnersListCubit>()
                  .removeOwner(ownersApplication.id!);
            }
          },
          icon: const Icon(Icons.delete_outline_outlined)),
      onTap: () {
        // showCardDialog(
        //   context,
        //   OwnerCard(
        //     owner: ownersApplication,
        //   ),
        // );
      },
    );
  }
}
