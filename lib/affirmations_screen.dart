import 'package:flutter/material.dart';

class AffirmationsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Daily Affirmations')),
      body: Center(
        child: Text('Today\'s affirmation: "I am calm and in control."'),
      ),
    );
  }
}
