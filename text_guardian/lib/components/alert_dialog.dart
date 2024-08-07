import 'package:flutter/material.dart';

class AlertBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text(
        'Input Required',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      content: const Text(
        'Please enter both name and message.',
        style: TextStyle(fontSize: 16),
      ),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(); // Close the dialog
          },
          child: const Text(
            'OK',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}
