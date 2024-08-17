import 'package:flutter/material.dart';

class Results extends StatelessWidget {
  final bool isSuspicious;

  const Results({super.key, required this.isSuspicious});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'R E S U L T S',
          style: TextStyle(letterSpacing: 1.5),
        ),
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                isSuspicious ? Icons.warning_amber : Icons.check_circle,
                color: isSuspicious ? Colors.red : Colors.green,
                size: 100,
              ),
              const SizedBox(height: 20),
              Text(
                isSuspicious
                    ? 'Suspicious link detected!'
                    : 'No suspicious links detected.',
                style: TextStyle(
                  fontSize: 24,
                  color: isSuspicious ? Colors.red : Colors.green,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context); // Return to the previous screen
                },
                child: const Text('Back to Home'),
                style: ElevatedButton.styleFrom(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                  textStyle: const TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
