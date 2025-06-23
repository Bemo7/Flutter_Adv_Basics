import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:adv_basics/questions_summary/summary_item.dart';
import 'package:flutter/material.dart';

class QuestionsSummary extends StatelessWidget {
  final List<Map<String, Object>> summaryData;

  const QuestionsSummary(this.summaryData, {super.key});

  @override
  Widget build(BuildContext buildContext) {
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        child: Column(
          spacing: 20,
          children: summaryData.map((data) {
            final isCorrect =
                ((data['user_answer'] as String)).toString() ==
                ((data['correct_answer'] as String)).toString();

            final identifier = ((data['question_index'] as int) + 1).toString();

            return Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              spacing: 20,
              children: [
                QuestionIdentifier(
                  identifier: identifier,
                  isCorrect: isCorrect,
                ),
                SummaryItem(
                  question: ((data['question'] as String)).toString(),
                  userAnswer: ((data['user_answer'] as String)).toString(),
                  correctAnswer: ((data['correct_answer'] as String))
                      .toString(),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
