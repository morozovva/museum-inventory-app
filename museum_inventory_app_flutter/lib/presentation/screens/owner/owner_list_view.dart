import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/common/state_screens/error_screen.dart';

import '../../cubits/owners_list/owners_list_cubit.dart';
import '../common/show_card_dialog.dart';
import '../common/state_screens/loading_screen.dart';
import 'owner_card.dart';
import 'owner_list_tile.dart';

class OwnersListView extends StatelessWidget {
  const OwnersListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 24),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Владельцы",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {
                    showCardDialog(
                        context,
                        const OwnerCard(
                          owner: null,
                        ));
                  },
                  icon: const Icon(
                    Icons.add_circle_outline,
                    size: 40,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 32,
            ),
            Expanded(
              child: BlocBuilder<OwnersListCubit, OwnersListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    ownersLoaded: (owners) {
                      return ListView.builder(
                        itemCount: owners.length,
                        padding: const EdgeInsets.only(bottom: 8),
                        itemBuilder: (context, index) {
                          return OwnerListTile(
                            owner: owners[index],
                          );
                        },
                      );
                    },
                    error: () {
                      return const ErrorScreen();
                    },
                    orElse: () {
                      return const LoadingScreen();
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    ]);
  }
}
