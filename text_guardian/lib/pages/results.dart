import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final bool isSuspicious;

  const Results({super.key, required this.isSuspicious});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('R E S U L T S'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Text(
            isSuspicious
                ? 'Suspicious link detected!'
                : 'No suspicious links detected.',
            style: TextStyle(
              fontSize: 20,
              color: isSuspicious ? Colors.red : Colors.green,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
