import 'package:flutter/material.dart';
import 'package:quize_app/widget/custom_elevated_button.dart';

class QuationScreen extends StatelessWidget {
  const QuationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Questions',
            style: TextStyle(color: Colors.white, fontSize: 23),
          ),
          const SizedBox(
            height: 30,
          ),
          CustomerElevatedButton(answer: 'Answer 1', onTap: () {}),
          CustomerElevatedButton(
            answer: 'Answer 2',
            onTap: () {},
          ),
          CustomerElevatedButton(
            answer: 'Answer 3',
            onTap: () {},
          ),
          CustomerElevatedButton(
            answer: 'Answer 4',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
