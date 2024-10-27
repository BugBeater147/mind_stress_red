import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  final List<Map<String, String>> meditationExercises = [
    {
      'title': 'Body Scan',
      'description': 'Focus on each part of your body from head to toe.'
    },
    {
      'title': 'Mindful Breathing',
      'description':
          'Pay attention to your breathing, inhaling and exhaling slowly.'
    },
    {
      'title': 'Loving Kindness',
      'description':
          'Send thoughts of goodwill and love to yourself and others.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guided Meditation')),
      body: ListView.builder(
        itemCount: meditationExercises.length,
        itemBuilder: (context, index) {
          print(
              "Loading meditation exercise: ${meditationExercises[index]['title']}"); // Debug message
          return ListTile(
            title: Text(meditationExercises[index]['title']!),
            subtitle: Text(meditationExercises[index]['description']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MeditationDetailScreen(
                    title: meditationExercises[index]['title']!,
                    description: meditationExercises[index]['description']!,
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

class MeditationDetailScreen extends StatelessWidget {
  final String title;
  final String description;

  MeditationDetailScreen({required this.title, required this.description});

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
