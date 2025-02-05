import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/items_list/items_list_cubit.dart';
import '../common/state_screens/error_screen.dart';
import '../common/state_screens/loading_screen.dart';
import 'item_card.dart';
import 'item_list_tile.dart';
import '../common/show_card_dialog.dart';

class ItemsListView extends StatelessWidget {
  const ItemsListView({super.key});

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
                  "Предметы",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {
                    showCardDialog(
                        context,
                        const ItemCard(
                          item: null,
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
              child: BlocBuilder<ItemsListCubit, ItemsListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    itemsLoaded: (items) {
                      final itemList = items.reversed.toList();
                      return ListView.builder(
                        itemCount: itemList.length,
                        padding: const EdgeInsets.only(bottom: 8),
                        itemBuilder: (context, index) {
                          return ItemListTile(
                            item: itemList[index],
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
