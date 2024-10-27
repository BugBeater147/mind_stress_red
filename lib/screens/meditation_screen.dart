import 'package:flutter/material.dart';

class MeditationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Guided Meditation')),
      body: Center(
        child: Text('Meditation session in progress...'),
      ),
    );
  }
}
