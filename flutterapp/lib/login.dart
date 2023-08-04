import 'package:flutter/material.dart';
import 'package:flutterapp/inital_page.dart';

class Login extends InitalPage {
  const Login({super.key});

  @override
  Column addContentToContainer() {
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
        super.createStyledButton(200, 40, 18, login),
        const SizedBox(
          height: 20,
        ),
        const Text(
          //todo: make text clickable
          "Create An Account",
          style: TextStyle(color: Colors.blue),
        ),
      ],
    );
  }

  login() {
    //todo implement body
  }
  createAccount() {
    //todo implement body
  }
}
