import 'package:flutter/material.dart';

class Textbox extends StatefulWidget {
  final TextEditingController nameController;
  final TextEditingController messageController;

  const Textbox(
      {super.key,
      required this.nameController,
      required this.messageController});

  @override
  State<Textbox> createState() => _TextboxState();
}

class _TextboxState extends State<Textbox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 205,
      child: Column(
        children: [
          TextField(
            controller: widget.nameController,
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
            controller: widget.messageController,
            keyboardType: TextInputType.multiline,
            maxLines: 4,
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
