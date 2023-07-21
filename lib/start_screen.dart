import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  final void Function() nextScren;
  const StartScreen(this.nextScren, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(mainAxisSize: MainAxisSize.min, children: [
        Image.asset(
          'assets/images/quiz-logo.png',
          height: 300,
        ),
        SizedBox(height: 100),
        Text(
          'Funny ways of learninig fluuter!',
          style: GoogleFonts.lato(
              fontSize: 24, color: Color.fromARGB(255, 218, 133, 230)),
        ),
        const SizedBox(
          height: 100,
        ),
        OutlinedButton.icon(
            onPressed: () {
              nextScren();
            },
            style: OutlinedButton.styleFrom(foregroundColor: Colors.white),
            icon: const Icon(Icons.arrow_forward_sharp),
            label: const Text('Strat Quize'))
      ]),
    );
  }
}
