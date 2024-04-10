import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/act_vh_efzk_list/act_vh_efzk_list_cubit.dart';
import 'package:museum_inventory_app_flutter/presentation/screens/act_vh_efzk/act_vh_efzk_screen.dart';
import '../common/state_screens/error_screen.dart';
import '../common/state_screens/loading_screen.dart';
import 'act_vh_efzk_list_tile.dart';

class ActVhEfzkListView extends StatelessWidget {
  const ActVhEfzkListView({super.key});

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
                  "Акты ВХ ЭФЗК",
                  style: Theme.of(context).textTheme.displayMedium,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, ActVhEfzkScreen.routeName);
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
              child: BlocBuilder<ActVhEfzkListCubit, ActVhEfzkListState>(
                builder: (context, state) {
                  return state.maybeWhen(
                    actVhEfzksLoaded: (acts) {
                      final actsList = acts.reversed.toList();
                      return ListView.builder(
                        itemCount: actsList.length,
                        padding: const EdgeInsets.only(bottom: 8),
                        itemBuilder: (context, index) {
                          return ActVHEFZKListTile(
                            actVhEfzk: actsList[index],
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
