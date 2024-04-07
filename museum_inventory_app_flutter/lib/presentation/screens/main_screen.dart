import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_flutter/data/enums/page_type.dart';
import '../cubits/main_view/main_view_cubit_cubit.dart';
import '../navigation_drawer/navigation_drawer.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  static const routeName = "/main-screen";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 156, vertical: 60),
          child: BlocBuilder<MainViewCubit, MainViewState>(
            builder: (context, state) {
              return Row(children: [
                const MainMenuNavigationDrawer(),
                const SizedBox(width: 24),
                Expanded(child: state.page.showPage()),
              ]);
            },
          ),
        ),
      ),
    );
  }
}
