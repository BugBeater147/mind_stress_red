import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:timezone/timezone.dart' as tz;

class NotificationService {
  final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();

  Future<void> initialize() async {
    var initializationSettingsAndroid = AndroidInitializationSettings('@mipmap/ic_launcher');
    var initializationSettingsIOS = DarwinInitializationSettings();
    var initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
    );

    await _flutterLocalNotificationsPlugin.initialize(initializationSettings);
  }

  Future<void> scheduleDailyReminder() async {
    var androidDetails = AndroidNotificationDetails(
      'daily_reminder_channel', // Channel ID
      'Daily Reminder', // Channel name
      channelDescription: 'Mindfulness reminders to keep you on track', // Channel description
      importance: Importance.max,
      priority: Priority.high,
    );

    var iosDetails = DarwinNotificationDetails();
    var platformDetails = NotificationDetails(android: androidDetails, iOS: iosDetails);

    await _flutterLocalNotificationsPlugin.zonedSchedule(
      0, // Notification ID
      'Mindfulness Reminder', // Notification title
      'Take a few moments for your mindfulness practice today.', // Notification body
      _nextInstanceOfTenAM(), // Schedule for 10:00 AM
      platformDetails,
      androidAllowWhileIdle: true,
      uiLocalNotificationDateInterpretation: UILocalNotificationDateInterpretation.wallClockTime,
      matchDateTimeComponents: DateTimeComponents.time, // Repeat daily at the same time
    );
  }

  tz.TZDateTime _nextInstanceOfTenAM() {
    final now = tz.TZDateTime.now(tz.local);
    var scheduledDate = tz.TZDateTime(tz.local, now.year, now.month, now.day, 10, 0, 0); // 10:00 AM

    if (scheduledDate.isBefore(now)) {
      scheduledDate = scheduledDate.add(Duration(days: 1));
    }
    return scheduledDate;
  }
}
