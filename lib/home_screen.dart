import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import '../services/notification_service.dart';
import 'meditation_screen.dart';
import 'breathing_screen.dart';
import 'affirmations_screen.dart';
import 'progress_screen.dart';

class HomeScreen extends StatelessWidget {
  final NotificationService _notificationService = NotificationService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mindfulness and Stress Reduction'),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              Navigator.pushReplacementNamed(context, '/login');
            },
          ),
        ],
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('Guided Meditation'),
            onTap: () {
              print("Navigating to Guided Meditation"); // Debug message
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MeditationScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Breathing Exercises'),
            onTap: () {
              print("Navigating to Breathing Exercises"); // Debug message
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BreathingScreen()),
              );
            },
          ),
          ListTile(
            title: Text('Daily Affirmations'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => AffirmationsScreen()),
            ),
          ),
          ListTile(
            title: Text('Progress Tracking'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProgressScreen()),
            ),
          ),
          ListTile(
            title: Text('Set Daily Reminder'),
            onTap: () {
              _notificationService.scheduleDailyReminder();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                content: Text("Daily reminder set for 10:00 AM"),
              ));
            },
          ),
        ],
      ),
    );
  }
}
