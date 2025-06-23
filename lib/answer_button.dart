import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final String answerText;
  final void Function() onTap;

  // const AnswerButton(this.answerText, this.onTap,{super.key});

  const AnswerButton(
    {
      super.key,
      required this.answerText,
      required this.onTap,
    }
  );

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: onTap,
      label: Text(
        answerText,
        textAlign: TextAlign.center,
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.white,
        backgroundColor: Color.fromARGB(255, 37, 6, 122),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusGeometry.circular(
            10
          ),
        ),
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
      ),
      icon: Icon(Icons.navigate_next_rounded),
    );
  }
}
