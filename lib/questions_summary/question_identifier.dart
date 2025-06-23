import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  final String identifier;
  final bool isCorrect;

  const QuestionIdentifier({
    super.key,
    required this.identifier,
    required this.isCorrect,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 34,
      height: 34,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100),
        color: isCorrect ? Colors.lightBlueAccent : Colors.purpleAccent,
      ),
      child: Text(
        identifier,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }
}
