import 'package:flutter/material.dart';
import 'package:flutterapp/inital_page.dart';
import 'package:flutterapp/logs.dart';
import 'package:flutterapp/register_page.dart';

class Login extends InitalPage {
  const Login({super.key});

  @override
  Column addContentToContainer(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 50,
        ),
        createTextField("E-mail", 3.5, Icons.email, false),
        const SizedBox(
          height: 50,
        ),
        createTextField("Password", 0.5, Icons.key, true),
        const SizedBox(
          height: 25,
        ),
        const Text(
          //todo: make text clickable
          "Forgot Password?",
          style: TextStyle(color: Colors.blue),
        ),
        const SizedBox(
          height: 20,
        ),
        super.createStyledButton(200, 40, 18, login, "Login", context),
        const SizedBox(
          height: 20,
        ),
        GestureDetector(
          onTap: () => test(context),
          child: const Text(
            //todo: make text clickable
            "Create An Account",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  test(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const RegisterPage()),
    );
  }

  login(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const Logs()),
    );
  }
}
