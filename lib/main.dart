import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

void main() {
  runApp(MaterialApp(
    title: "Project Nuckelavee",
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController usuarioController = TextEditingController();
  TextEditingController senhaController = TextEditingController();

  void showSnack(String text, {double charSize = 14}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        content: Text(
          text,
          style: TextStyle(
            fontSize: charSize,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Card(
            color: Colors.deepPurpleAccent,
            child: Padding(
              padding: const EdgeInsets.all(32.0),
              child: Wrap(
                children: [
                  Column(
                    children: [
                      Text(
                        "Login",
                        style: TextStyle(
                          fontSize: 32,
                        ),
                      ),
                      Container(
                        width: 500,
                        child: TextField(
                          controller: usuarioController,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        width: 500,
                        child: TextField(
                          obscureText: true,
                          enableSuggestions: false,
                          autocorrect: false,
                          controller: senhaController,
                          style: TextStyle(
                            fontSize: 20,
                          ),
                        ),
                      ),
                      Container(
                        child: ElevatedButton(
                          onPressed: () {
                            showSnack("Voce logou, top", charSize: 40);
                          },
                          child: Text("logar"),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
