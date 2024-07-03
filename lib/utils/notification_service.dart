import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:sport_app/utils/helper.dart';

// class NotificationService {
final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();
FirebaseMessaging messaging = FirebaseMessaging.instance;

//   /// request a notification permission

const AndroidInitializationSettings _androidInitializationSettings =
    AndroidInitializationSettings("@mipmap/ic_launcher");
const DarwinInitializationSettings darwinInitializationSettings =
    DarwinInitializationSettings();

/// Android notification settings
AndroidNotificationDetails androidNotificationDetails =
    const AndroidNotificationDetails(
  "channelId",
  "channelName",
  playSound: true,
  importance: Importance.max,
  priority: Priority.high,
);

// / IOS notification settings
DarwinNotificationDetails darwinNotificationDetails =
    const DarwinNotificationDetails(
  presentAlert: true,
  presentSound: true,
);

//   /// function for show message
void showFlutterNotification(RemoteMessage message) {
  RemoteNotification? notification = message.notification;
  AndroidNotification? android = message.notification?.android;
  if (notification != null && android != null) {
    _flutterLocalNotificationsPlugin.show(
      notification.hashCode,
      notification.title,
      notification.body,
      NotificationDetails(
        android: androidNotificationDetails,
        iOS: darwinNotificationDetails,
      ),
    );
  }
}

const AndroidNotificationChannel channel = AndroidNotificationChannel(
  'my_channel', // id
  'My Channel', // title
// description
  importance: Importance.high,
);

class Notifications {
  static requestPermissions() async {
    await messaging.requestPermission(
      alert: true,
      badge: true,
      sound: true,
    );
  }

  static Future init() async {
    requestPermissions();
    await Firebase.initializeApp();
    String? topic = await getKeyValue(key: "phone");
    messaging.subscribeToTopic('all');
    messaging.subscribeToTopic(topic ?? "");
    InitializationSettings initializationSettings =
        const InitializationSettings(
      android: _androidInitializationSettings,
      iOS: darwinInitializationSettings,
    );
    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);

    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();

    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      Future.delayed(Duration.zero, () {
        showFlutterNotification(message);
      });
    });
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      Future.delayed(Duration.zero, () {
        showFlutterNotification(message);
      });
    });
  }
}
