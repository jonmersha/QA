import 'package:flutter/material.dart';

class QuationSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;
  const QuationSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData
              .map(
                (e) => Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 30,
                        height: 30,
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.amber),
                        child: Center(
                            child:
                                Text('${(e['question_index'] as int) + 1}'))),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('${e['Quastion']}'),
                          Text('${e['correct_answers']}'),
                          Text('${e['user_naswer']}'),
                        ],
                      ),
                    )
                  ],
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
