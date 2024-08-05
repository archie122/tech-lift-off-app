import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: Column(
        children: [
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Enter the name of the sender',
              hintStyle: const TextStyle(fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              hintText: 'Enter the message',
              hintStyle: const TextStyle(fontSize: 14),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.all(16),
            ),
          ),
        ],
      ),
    );
  }
}
