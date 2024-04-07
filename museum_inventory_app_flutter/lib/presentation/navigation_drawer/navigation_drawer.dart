import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/colors.dart';
import '../../data/enums/page_type.dart';
import '../cubits/main_view/main_view_cubit_cubit.dart';
import '../screens/login_screen.dart';
import 'navigation_drawer_list_tile.dart';

class MainMenuNavigationDrawer extends StatefulWidget {
  const MainMenuNavigationDrawer({
    super.key,
  });

  @override
  State<MainMenuNavigationDrawer> createState() =>
      _MainMenuNavigationDrawerState();
}

class _MainMenuNavigationDrawerState extends State<MainMenuNavigationDrawer> {
  late int _selectedIndex;

  @override
  void initState() {
    _selectedIndex = 0;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 360,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: const Color.fromRGBO(245, 245, 245, 1)),
        padding: const EdgeInsets.all(12),
        child: NavigationDrawer(
          backgroundColor: Colors.transparent,
          surfaceTintColor: Colors.transparent,
          indicatorColor: middleGrey,
          onDestinationSelected: (value) {
            context.read<MainViewCubit>().changed(PageType.values[value]);
            setState(() {
              _selectedIndex = value;
            });
          },
          tilePadding: const EdgeInsets.all(0),
          selectedIndex: _selectedIndex,
          children: [
            ListTile(
              visualDensity: const VisualDensity(vertical: 0),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(100)),
              title: const Text("username"),
              trailing: IconButton(
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, LoginScreen.routeName);
                  },
                  icon: const Icon(Icons.exit_to_app_outlined)),
            ),
            customNavigationDrawerDestination("Предметы"),
            customNavigationDrawerDestination("Аналитика"),
            customNavigationDrawerDestination("Сотрудники"),
            const NavigationDrawerListTile(
                title: "Первичный прием", hasCircle: false, isSelected: false),
            customNavigationDrawerDestination("Заявления владельцев"),
            customNavigationDrawerDestination("Акты ВХ ЭФЗК"),
            customNavigationDrawerDestination("Владельцы"),
            const Divider(),
            const NavigationDrawerListTile(
                title: "ЭФЗК", hasCircle: false, isSelected: false),
            customNavigationDrawerDestination("Экспертизы"),
            customNavigationDrawerDestination("Протокол ЭФЗК"),
            customNavigationDrawerDestination(
                "Акты приема на постоянное хранение"),
            customNavigationDrawerDestination("Акты возврата"),
            const Divider(),
            const NavigationDrawerListTile(
                title: "Книги музея", hasCircle: false, isSelected: false),
            customNavigationDrawerDestination("Записи инвентарных книг"),
            customNavigationDrawerDestination("Записи книг поступлений"),
            const Divider(),
            const NavigationDrawerListTile(
                title: "Списание", hasCircle: false, isSelected: false),
            customNavigationDrawerDestination("Приказы списания"),
            customNavigationDrawerDestination("Акты списания"),
          ],
        ));
  }

  NavigationDrawerDestination customNavigationDrawerDestination(String title) {
    const circularIcon = Icon(
      Icons.circle,
      size: 12,
    );
    return NavigationDrawerDestination(
      icon: circularIcon,
      label: Text(title),
      backgroundColor: lightGrey,
    );
  }
}
