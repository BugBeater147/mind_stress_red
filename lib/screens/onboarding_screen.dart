import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController _pageController = PageController();
  int _currentPage = 0;

  List<Map<String, String>> onboardingData = [
    {
      'title': 'Welcome to Mindfulness App',
      'description': 'This app offers guided meditation, breathing exercises, daily affirmations, and progress tracking.',
    },
    {
      'title': 'Guided Meditation',
      'description': 'Practice mindfulness with guided meditation sessions tailored for relaxation and focus.',
    },
    {
      'title': 'Breathing Exercises',
      'description': 'Follow calming breathing exercises to reduce stress and improve concentration.',
    },
    {
      'title': 'Daily Affirmations',
      'description': 'Start each day with positive affirmations to uplift your mindset.',
    },
    {
      'title': 'Progress Tracking',
      'description': 'Track your progress to stay motivated on your mindfulness journey.',
    },
  ];

  void _nextPage() {
    if (_currentPage < onboardingData.length - 1) {
      _pageController.nextPage(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacementNamed(context, '/login');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _pageController,
              onPageChanged: (index) {
                setState(() {
                  _currentPage = index;
                });
              },
              itemCount: onboardingData.length,
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      onboardingData[index]['title']!,
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    Text(
                      onboardingData[index]['description']!,
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButton(
              onPressed: _nextPage,
              child: Text(_currentPage == onboardingData.length - 1 ? 'Get Started' : 'Next'),
            ),
          ),
        ],
      ),
    );
  }
}
