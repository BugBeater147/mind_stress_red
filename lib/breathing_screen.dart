import 'package:flutter/material.dart';

class BreathingScreen extends StatelessWidget {
  final List<Map<String, String>> breathingExercises = [
    {
      'title': '4-7-8 Breathing',
      'description': 'Inhale for 4 seconds, hold for 7, exhale for 8.'
    },
    {
      'title': 'Box Breathing',
      'description': 'Inhale, hold, exhale, and hold for 4 seconds each.'
    },
    {
      'title': 'Diaphragmatic Breathing',
      'description':
          'Breathe deeply using your diaphragm rather than your chest.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Breathing Exercises')),
      body: ListView.builder(
        itemCount: breathingExercises.length,
        itemBuilder: (context, index) {
          print(
              "Loading breathing exercise: ${breathingExercises[index]['title']}"); // Debug message
          return ListTile(
            title: Text(breathingExercises[index]['title']!),
            subtitle: Text(breathingExercises[index]['description']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BreathingDetailScreen(
                    title: breathingExercises[index]['title']!,
                    description: breathingExercises[index]['description']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BreathingDetailScreen extends StatelessWidget {
  final String title;
  final String description;

  BreathingDetailScreen({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Text(description, style: TextStyle(fontSize: 18)),
      ),
    );
  }
}
