// import 'dart:developer';
//
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
//
// late FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;
//
// class CustomLocalNotification {
//   static late BuildContext context;
//   static late AndroidNotificationChannel channel;
//
//   static bool isFlutterLocalNotificationsInitialized = false;
//
//   static Future<void> setupLocalNotifications(
//       {required BuildContext notificationContext}) async {
//     if (isFlutterLocalNotificationsInitialized) {
//       return;
//     }
//     context = notificationContext;
//     channel = const AndroidNotificationChannel(
//       'high_importance_channel', // id
//       'High Importance Notifications', // title
//       description: 'This channel is used for important notifications.',
//       importance: Importance.high,
//       playSound: true,
//       enableVibration: true,
//       sound: RawResourceAndroidNotificationSound('synth'),
//     );
//
//     flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
//
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//         AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//
//     await FirebaseMessaging.instance
//         .setForegroundNotificationPresentationOptions(
//       alert: true,
//       badge: true,
//       sound: true,
//     );
//     isFlutterLocalNotificationsInitialized = true;
//   }
//
//   static void showFlutterNotification(RemoteMessage message) {
//     if (message.notification != null && message.notification?.android != null) {
//       flutterLocalNotificationsPlugin.show(
//         message.notification.hashCode,
//         message.notification?.title,
//         message.notification?.body,
//         NotificationDetails(
//           android: AndroidNotificationDetails(
//             channel.id,
//             channel.name,
//             channelDescription: channel.description,
//             icon: '@mipmap/launcher_icon',
//             sound: RawResourceAndroidNotificationSound('synth'),
//           ),
//         ),
//       );
//       if (kDebugMode) {
//         print('local notification ${message.notification?.title}');
//       }
//     }
//   }
//
//   static Future<void> onMessageOpenedApp(RemoteMessage message) async {
//     log('${message.data}');
//   }
// }