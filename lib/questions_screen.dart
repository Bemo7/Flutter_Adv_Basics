import 'package:flutter/material.dart';

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<StatefulWidget> createState() {
    return _QuestionScreen();
  }
}

class _QuestionScreen extends State<QuestionsScreen> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("The question",
          style: TextStyle(
            color: Colors.white
          ),
          ),
          const SizedBox(height: 20),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Answer 1"),
            icon: Icon(Icons.navigate_next_rounded),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Answer 2"),
            icon: Icon(Icons.navigate_next_rounded),
          ),
          ElevatedButton.icon(
            onPressed: () {},
            label: Text("Answer 3"),
            icon: Icon(Icons.navigate_next_rounded),
          ),
        ],
      ),
    );
  }
}
