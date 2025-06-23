import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  final String question;
  final String userAnswer;
  final String correctAnswer;

  const SummaryItem({
    super.key,
    required this.question,
    required this.userAnswer,
    required this.correctAnswer,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            question,
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 4),
          Text(
            userAnswer,
            style: TextStyle(
              color: const Color.fromARGB(255, 178, 84, 255),
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            correctAnswer,
            style: TextStyle(
              color: const Color.fromARGB(255, 120, 194, 255),
              fontSize: 16,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
