import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/act_vh_efzk_list/act_vh_efzk_list_cubit.dart';

import '../../../../core/colors.dart';
import 'act_vh_efzk_screen.dart';

class ActVHEFZKListTile extends StatelessWidget {
  const ActVHEFZKListTile({
    super.key,
    required this.actVhEfzk,
  });

  final ActVHEFZK actVhEfzk;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      visualDensity: const VisualDensity(vertical: 4),
      tileColor: listTileBackground,
      title: Text(actVhEfzk.id.toString()),
      leading: const Icon(Icons.satellite_outlined),
      trailing: IconButton(
        onPressed: () {
          if (actVhEfzk.id != null) {
            context.read<ActVhEfzkListCubit>().removeActVhEfzk(actVhEfzk.id!);
          }
        },
        icon: const Icon(
          Icons.delete_outline_outlined,
        ),
      ),
      onTap: () {
        // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   return EmployeeScreen(employee: actVhEfzk);
        // }));
      },
    );
  }
}
