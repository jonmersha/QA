import 'package:flutter/material.dart';
import 'package:quize_app/data/quations.dart';
import 'package:quize_app/model/quiz_question.dart';
import 'package:quize_app/widget/custom_elevated_button.dart';
import 'package:google_fonts/google_fonts.dart';

class QuationScreen extends StatefulWidget {
  const QuationScreen(this.onSlectAnswers, {super.key});
  final void Function(String answer) onSlectAnswers;
  @override
  State<QuationScreen> createState() => _QuationScreenState();
}

class _QuationScreenState extends State<QuationScreen> {
  var currentQuestionsIndex = 0;

  void answersQuastion(String selectedAnswers) {
    widget.onSlectAnswers(selectedAnswers);
    setState(() {
      if (currentQuestionsIndex < quations.length - 1)
        currentQuestionsIndex++;
      else
        currentQuestionsIndex = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    final currentQuation = quations[currentQuestionsIndex];

    return SizedBox(
      width: double.infinity,
      child: Container(
        margin: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Qastion ${currentQuestionsIndex + 1} of ${quations.length}',
              style: const TextStyle(color: Colors.white, fontSize: 30),
              textAlign: TextAlign.center,
            ),
            //for (int i = 0; i < currentQuation.length; i++)
            SizedBox(
              height: 100,
            ),
            Text(
              currentQuation.text,
              style: GoogleFonts.lato(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            ...currentQuation
                .getShufledAnswers()
                .map((e) => CustomerElevatedButton(
                      answer: e,
                      onTap: () {
                        answersQuastion(e);
                      },
                    ))
          ],
        ),
      ),
    );
  }
}
