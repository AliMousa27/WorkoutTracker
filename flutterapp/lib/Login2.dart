import 'package:flutter/material.dart';
import 'package:flutterapp/InitalPage.dart';
import 'package:wave/config.dart';
import 'package:wave/wave.dart';

class Login2 extends InitalPage {
  const Login2({super.key});

  @override
  Column addContentToContainer() {
    return Column(
      children: [
        createTextField("E-mail", 3.5, Icons.email, false),
        createTextField("Password", 0.5, Icons.key, true),
        const Align(
          alignment: Alignment.bottomLeft,
          heightFactor: 3,
          widthFactor: 3,
          child: Text(
            //TODO:MAKE CLICKABLE THAT TAKES YOU ELSEWHERE
            "Forgot Password?",
            style: TextStyle(color: Colors.blue),
          ),
        ),
        Align(
          heightFactor: 2,
          child: SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
              onPressed: login,
              style: ButtonStyle(
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                ),
              ),
              child: const Text("Login"),
            ),
          ),
        ),
        const Align(
          alignment: Alignment.center,
          heightFactor: 1,
          child: Text(
            //TODO:MAKE CLICKABLE THAT TAKES YOU ELSEWHERE
            "Create An Account",
            style: TextStyle(color: Colors.blue),
          ),
        ),
      ],
    );
  }

  login() {
    //todo implement body
  }
}
