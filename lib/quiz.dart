import 'package:flutter/material.dart';
import 'package:quize_app/quation_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  Widget? activeScreen;
  String activeScreeens = 'start';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(transitions);
  // }

  void transitions() {
    setState(() {
      activeScreeens = 'quations';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
                Color.fromARGB(255, 77, 12, 189),
                Color.fromARGB(255, 121, 26, 223)
              ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
            ),
            child: activeScreeens == 'start'
                ? StartScreen(transitions)
                : QuationScreen()),
      ),
    );
  }
}
