import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:museum_inventory_app_client/museum_inventory_app_client.dart';
import 'package:flutter/material.dart';
import 'package:museum_inventory_app_flutter/presentation/cubits/employee_list/employee_list_cubit.dart';
import 'package:serverpod_flutter/serverpod_flutter.dart';

import 'core/themes.dart';
import 'presentation/cubits/items_list/items_list_cubit.dart';
import 'presentation/cubits/main_view/main_view_cubit_cubit.dart';
import 'presentation/cubits/owners_application_list/owners_application_list_cubit.dart';
import 'presentation/cubits/owners_list/owners_list_cubit.dart';
import 'presentation/screens/employee/employee_screen.dart';
import 'presentation/screens/login_screen.dart';
import 'presentation/screens/main_screen.dart';

// Sets up a singleton client object that can be used to talk to the server from
// anywhere in our app. The client is generated from your server code.
// The client is set up to connect to a Serverpod running on a local server on
// the default port. You will need to modify this to connect to staging or
// production servers.
var client = Client('http://localhost:8080/')
  ..connectivityMonitor = FlutterConnectivityMonitor();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MainViewCubit>(
          create: (context) => MainViewCubit(),
        ),
        BlocProvider<ItemsListCubit>(
          create: (context) => ItemsListCubit(),
        ),
        BlocProvider<EmployeeListCubit>(
          create: (context) => EmployeeListCubit(),
        ),
        BlocProvider<OwnersListCubit>(
          create: (context) => OwnersListCubit(),
        ),
        BlocProvider<OwnersApplicationListCubit>(
          create: (context) => OwnersApplicationListCubit(),
        ),
      ],
      child: MaterialApp(
        title: 'Museum Inventory',
        debugShowCheckedModeBanner: false,
        theme: Themes().appsTheme,
        home: const LoginScreen(),
        routes: {
          LoginScreen.routeName: (context) => const LoginScreen(),
          MainScreen.routeName: (context) => const MainScreen(),
          EmployeeScreen.routeName: (context) => const EmployeeScreen(),
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  // These fields hold the last result or error message that we've received from
  // the server or null if no result exists yet.
  String? _resultMessage;
  String? _errorMessage;

  final _textEditingController = TextEditingController();

  // Calls the `hello` method of the `example` endpoint. Will set either the
  // `_resultMessage` or `_errorMessage` field, depending on if the call
  // is successful.
  void _callHello() async {
    try {
      final result = await client.example.hello(_textEditingController.text);
      setState(() {
        _errorMessage = null;
        _resultMessage = result;
      });
    } catch (e) {
      setState(() {
        _errorMessage = '$e';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: TextField(
                controller: _textEditingController,
                decoration: const InputDecoration(
                  hintText: 'Enter your name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 16.0),
              child: ElevatedButton(
                onPressed: _callHello,
                child: const Text('Send to Server'),
              ),
            ),
            _ResultDisplay(
              resultMessage: _resultMessage,
              errorMessage: _errorMessage,
            ),
          ],
        ),
      ),
    );
  }
}

// _ResultDisplays shows the result of the call. Either the returned result from
// the `example.hello` endpoint method or an error message.
class _ResultDisplay extends StatelessWidget {
  final String? resultMessage;
  final String? errorMessage;

  const _ResultDisplay({
    this.resultMessage,
    this.errorMessage,
  });

  @override
  Widget build(BuildContext context) {
    String text;
    Color backgroundColor;
    if (errorMessage != null) {
      backgroundColor = Colors.red[300]!;
      text = errorMessage!;
    } else if (resultMessage != null) {
      backgroundColor = Colors.green[300]!;
      text = resultMessage!;
    } else {
      backgroundColor = Colors.grey[300]!;
      text = 'No server response yet.';
    }

    return Container(
      height: 50,
      color: backgroundColor,
      child: Center(
        child: Text(text),
      ),
    );
  }
}
