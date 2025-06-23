import 'package:flutter/material.dart';

import 'package:adv_basics/data/questions.dart';
import 'package:adv_basics/questions_screen.dart';
import 'package:adv_basics/start_screen.dart';
import 'package:adv_basics/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Quiz();
  }
}

class _Quiz extends State<Quiz> {
  // Widget? activeScreen;
  List<String> selectedAnswers = [];
  var activeScreen = 'start-screen';

  // @override
  // void initState() {
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }

  // void switchScreen (){
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }

  void switchScreen() {
    setState(() {
      activeScreen = 'question-screen';
    });
  }

  void chooseAnswer(String answer) {
    selectedAnswers.add(answer);

    if (selectedAnswers.length == questions.length) {
      setState(() {
        activeScreen = 'results-screen';
      });
    }
  }

  void restartQuiz(){
    selectedAnswers = [];
    setState(() {
        activeScreen = 'question-screen';
      });
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidget = activeScreen == 'start-screen'
    //     ? StartScreen(switchScreen)
    //     : QuestionsScreen();

    Widget screenWidget = StartScreen(switchScreen);

    if (activeScreen == 'question-screen') {
      screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswer);
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(chosenAnswers: selectedAnswers, onRestartQuiz: restartQuiz,);
    }

    return MaterialApp(
      home: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 68, 25, 185),
                const Color.fromARGB(255, 113, 58, 209),
              ],
              begin: AlignmentGeometry.xy(-1.0, -1.0),
              end: AlignmentGeometry.xy(1.0, 1.0),
            ),
          ),
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(),
          child: screenWidget,
        ),
      ),
    );
  }
}
