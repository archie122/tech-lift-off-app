import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class Noti {
  static Future<void> initialize(
      FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin) async {
    var androidInitialize =
        const AndroidInitializationSettings('mipmap/ic_launcher');
    var iOSInitialize = const DarwinInitializationSettings();

    var initializationSettings = InitializationSettings(
      android: androidInitialize,
      iOS: iOSInitialize,
    );

    await flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  static Future<void> showTextNotification({
    required int id,
    required String title,
    required String body,
    required FlutterLocalNotificationsPlugin fin,
  }) async {
    var androidDetails = const AndroidNotificationDetails(
      'channel_id',
      'channel_name',
      channelDescription: 'Channel for text notifications',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      sound: RawResourceAndroidNotificationSound('notification'),
    );

    var iOSDetails = const DarwinNotificationDetails(
      presentAlert: true,
      presentBadge: true,
      presentSound: true,
      sound: 'notification.wav',
      badgeNumber: 1,
    );

    var notificationDetails = NotificationDetails(
      android: androidDetails,
      iOS: iOSDetails,
    );

    await fin.show(
      id,
      title,
      body,
      notificationDetails,
    );
  }
}
