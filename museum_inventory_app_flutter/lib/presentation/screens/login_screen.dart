import 'package:flutter/material.dart';

import '../../../core/colors.dart';
import '../../../core/themes.dart';
import 'main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  static const routeName = "/login-screen";

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey();
  final TextEditingController _loginController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _isPasswordObscured = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Form(
          key: _formKey,
          child: SizedBox(
            width: 360,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Вход",
                  style: Theme.of(context).textTheme.displayLarge,
                ),
                const SizedBox(
                  height: 64,
                ),
                TextFormField(
                  controller: _loginController,
                  decoration: Themes().normalTextInputDecoration("Логин"),
                  textInputAction: TextInputAction.next,
                  style: const TextStyle(color: darkMain),
                  onChanged: (newValue) {},
                  validator: (value) {
                    return _loginController.text.isEmpty ? "error" : null;
                  },
                ),
                const SizedBox(
                  height: 16,
                ),
                TextFormField(
                  controller: _passwordController,
                  decoration:
                      Themes().normalTextInputDecoration("Пароль").copyWith(
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  _isPasswordObscured = !_isPasswordObscured;
                                });
                              },
                              icon: Icon(
                                _isPasswordObscured
                                    ? Icons.visibility_off_outlined
                                    : Icons.remove_red_eye_outlined,
                                color: greySecondary,
                                size: 24,
                              ))),
                  textInputAction: TextInputAction.done,
                  obscureText: _isPasswordObscured,
                  style: const TextStyle(color: darkMain),
                  onChanged: (newValue) {},
                  validator: (value) {
                    return _loginController.text.isEmpty ? "error" : null;
                  },
                ),
                const SizedBox(
                  height: 32,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .pushReplacementNamed(MainScreen.routeName);
                    },
                    style: Themes().loginButtonStyle(context),
                    child: Text(
                      "Войти",
                      style: Theme.of(context)
                          .textTheme
                          .headlineMedium
                          ?.copyWith(color: Colors.white),
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
