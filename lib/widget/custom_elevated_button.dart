import 'package:flutter/material.dart';

class CustomerElevatedButton extends StatelessWidget {
  final String answer;
  final void Function() onTap;
  const CustomerElevatedButton(
      {super.key, required this.answer, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
          backgroundColor: Color.fromARGB(255, 26, 3, 51),
          foregroundColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      child: Text(
        answer,
        style: TextStyle(fontSize: 18),
      ),
    );
  }
}
