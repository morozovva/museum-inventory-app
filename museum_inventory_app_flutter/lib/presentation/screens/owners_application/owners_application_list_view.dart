import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/owners_application_list/owners_application_list_cubit.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/common/state_screens/loading_screen.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/owners_application/owner_application_list_tile.dart';

import '../common/show_card_dialog.dart';
import '../common/state_screens/error_screen.dart';
import 'owners_application_card.dart';

class OwnersApplicationListView extends StatelessWidget {
  const OwnersApplicationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const SizedBox(width: 24),
      Expanded(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Заявления владельцев",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {
                    showCardDialog(
                        context,
                        const OwnersApplicationCard(
                          ownersApplication: null,
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
              child: BlocBuilder<OwnersApplicationListCubit,
                  OwnersApplicationListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    ownersApplicationLoaded: (ownersApplication) {
                      return ListView.builder(
                        itemCount: ownersApplication.length,
                        padding: const EdgeInsets.only(bottom: 8),
                        itemBuilder: (context, index) {
                          return OwnersApplicationListTile(
                            ownersApplication: ownersApplication[index],
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
