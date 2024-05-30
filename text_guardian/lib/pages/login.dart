import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("I N T R O P A G E")),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go To Home"),
          onPressed: () {
            Navigator.pushNamed(context, '/homepage');
          },
        ),
      ),
    );
  }
}
