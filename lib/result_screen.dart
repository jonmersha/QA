import 'package:flutter/material.dart';
import 'package:quize_app/data/quations.dart';
import 'package:quize_app/questions_summary.dart';

class ResultScreen extends StatelessWidget {
  final void Function() restartExam;
  final List<String> selectedAnwers;
  const ResultScreen(this.restartExam, this.selectedAnwers, {super.key});

  List<Map<String, Object>> get summaryData {
    final List<Map<String, Object>> summary = [];

    for (int i = 0; i < selectedAnwers.length; i++) {
      summary.add({
        'question_index': i,
        'Quastion': quations[i].text,
        'correct_answers': quations[i].answers[0],
        'user_naswer': selectedAnwers[i]
      });
    }
    return summary;
  }

  @override
  Widget build(BuildContext context) {
    // final summaryData = getSummaryData();
    final numberOfTotalQuations = quations.length;
    final numberOfCorrectAnswers = summaryData
        .where(
            (element) => element['correct_answers'] == element['user_naswer'])
        .length;

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'You have correctly Answered ${numberOfCorrectAnswers} out of ${numberOfTotalQuations} quaitions',
              style: const TextStyle(color: Colors.white, fontSize: 23),
              textAlign: TextAlign.center,
            ),
            // const SizedBox(height: 30),
            // const Text(
            //   'List of anwers and quationsa',
            //   style: TextStyle(color: Colors.white, fontSize: 30),
            //   textAlign: TextAlign.center,
            // ),
            const SizedBox(
              height: 30,
            ),
            QuationSummary(summaryData),
            SizedBox(
              height: 30,
            ),
            TextButton(
                onPressed: () {
                  restartExam();
                },
                child: Text('Restart Exam'))
          ],
        ),
      ),
    );
  }
}
