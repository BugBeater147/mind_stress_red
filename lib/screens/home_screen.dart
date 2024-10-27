import 'package:flutter/material.dart';
import 'meditation_screen.dart';
import 'breathing_screen.dart';
import 'affirmations_screen.dart';
import 'progress_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mindfulness and Stress Reduction')),
      body: Column(
        children: [
          ListTile(
            title: Text('Guided Meditation'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MeditationScreen()),
            ),
          ),
          ListTile(
            title: Text('Breathing Exercises'),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => BreathingScreen()),
            ),
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
        ],
      ),
    );
  }
}
