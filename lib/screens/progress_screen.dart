import 'package:flutter/material.dart';
import '../services/progress_service.dart';

class ProgressScreen extends StatelessWidget {
  final ProgressService _progressService = ProgressService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Progress Tracking')),
      body: FutureBuilder(
        future: _progressService.getProgress(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CircularProgressIndicator();
          }
          final progress = snapshot.data as Map<String, dynamic>?;
          return Center(
            child: Text('Streaks: ${progress?['streaks'] ?? 0}, Sessions: ${progress?['sessions'] ?? 0}'),
          );
        },
      ),
    );
  }
}
