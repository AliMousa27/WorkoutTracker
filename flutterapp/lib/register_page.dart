import 'package:flutter/material.dart';
import 'package:flutterapp/inital_page.dart';

class RegisterPage extends InitalPage {
  const RegisterPage({super.key});

  @override
  Column addContentToContainer(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30),
        createTextField("Full Name", 2.5, Icons.person_4_sharp, false),
        const SizedBox(height: 30),
        createTextField("E-mail", 1.0, Icons.email, false),
        const SizedBox(height: 30),
        createTextField("Password", 2.5, Icons.key, true),
        const SizedBox(height: 30),
        super.createStyledButton(
            200, 40, 18, registerNewAccount, "Register", context),
        const SizedBox(
          height: 25,
        ),
        RichText(
          text: const TextSpan(
            style: TextStyle(color: Colors.black), //apply style to all
            children: [
              TextSpan(
                text: 'Already have an account?',
              ),
              TextSpan(
                  text: ' Learn Flutter.', style: TextStyle(color: Colors.blue))
            ],
          ),
        )
      ],
    );
  }

  void registerNewAccount(BuildContext context) {
    //todo: implement body
  }
}
