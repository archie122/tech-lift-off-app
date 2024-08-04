import 'package:flutter/material.dart';

class Textbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: TextField(
        keyboardType: TextInputType.text,
        decoration: InputDecoration(
          hintText: 'Enter a product name eg. pension',
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
    );
  }
}
