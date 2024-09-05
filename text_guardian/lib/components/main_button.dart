import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:flutter/material.dart';
import 'package:text_guardian/components/notification.dart';
import 'dart:async';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

class Button extends StatelessWidget {
  final VoidCallback onPressed;

  const Button({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Color.fromARGB(255, 238, 68, 47)),
        foregroundColor: MaterialStateProperty.all(Colors.white),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        minimumSize: MaterialStateProperty.all(
          const Size.fromHeight(50),
        ),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        elevation: MaterialStateProperty.all(0),
        animationDuration: const Duration(milliseconds: 500),
      ),
      child: const Text('View Details'),
      onPressed: () {
        onPressed();
        // AwesomeNotifications().createNotification(
        //   content: NotificationContent(
        //     id: 1,
        //     channelKey: 'basic_channel',
        //     title: 'Text Guardian',
        //     body: 'The results are ready.',
        //   ),
        // );

        // Navigator.pushNamed(context, '/loading');

        // Timer(const Duration(seconds: 5), () {
        //   Noti.showTextNotification(
        //     id: 1, // Provide a unique id here
        //     title: 'Text Guardian',
        //     body: 'The results are ready.',
        //     fin: flutterLocalNotificationsPlugin,
        //   );
        // });
      },
    );
  }
}
