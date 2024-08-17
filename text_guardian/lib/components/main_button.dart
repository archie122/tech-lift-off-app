import 'package:flutter/material.dart';
// import 'package:text_guardian/components/notification.dart';
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:text_guardian/components/local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Button extends StatelessWidget {
  final VoidCallback onPressed;

  const Button({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(Colors.green),
        foregroundColor: MaterialStatePropertyAll(Colors.white),
        padding: MaterialStatePropertyAll(
          EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        ),
        shape: MaterialStatePropertyAll(
          StadiumBorder(),
        ),
        minimumSize: MaterialStatePropertyAll(Size.fromHeight(50)),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: MaterialStatePropertyAll(0),
        shadowColor: MaterialStatePropertyAll(Colors.transparent),
        surfaceTintColor: MaterialStatePropertyAll(Colors.transparent),
        visualDensity: VisualDensity.compact,
        animationDuration: Duration(milliseconds: 500),
      ),
      child: const Text('View Details'),
      onPressed: () {
        LocalNotifications.showNotification(
          title: 'Text Guardian',
          body: 'The results are ready.',
          payload: 'payload',
        );

        onPressed();

        // Navigator.pushNamed(context, '/loading');

        // Timer(const Duration(seconds: 5), () {
        // Noti.showTextNotification(
        //   id: 1, // Provide a unique id here
        //   title: 'Text Guardian',
        //   body: 'The results are ready.',
        //   fin: flutterLocalNotificationsPlugin,
        // );
        // });
      },
    );
  }
}
