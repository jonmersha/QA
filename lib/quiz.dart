import 'package:flutter/material.dart';
import 'package:quize_app/data/quations.dart';
import 'package:quize_app/quation_screen.dart';
import 'package:quize_app/result_screen.dart';
import 'package:quize_app/start_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {
  final List<String> _selectedAnwers = [];
  //var activeScreen;
  String activeScreeens = 'start';

  // @override
  // void initState() {
  //   super.initState();
  //   activeScreen = StartScreen(transitions);
  // }

  void transitions() {
    setState(() {
      activeScreeens = 'questions';
    });
  }

  void chooseAnswer(String anwers) {
    _selectedAnwers.add(anwers);
    if (_selectedAnwers.length == quations.length) {
      //switching to result
      //selectedAnwers.clear();
      setState(() {
        activeScreeens = 'result';
      });
    }
  }

  void restartExam() {
    _selectedAnwers.clear();
    setState(() {
      activeScreeens = 'questions';
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget screenWiget = StartScreen(transitions);
    if (activeScreeens == 'questions') {
      screenWiget = QuationScreen(chooseAnswer);
    }
    if (activeScreeens == 'result') {
      screenWiget = ResultScreen(
        restartExam,
        _selectedAnwers,
      );
    }

    return MaterialApp(
        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 77, 12, 189),
            Color.fromARGB(255, 121, 26, 223)
          ], begin: Alignment.topCenter, end: Alignment.bottomCenter),
        ),
        child: screenWiget,
      ),
    ));
  }
}
