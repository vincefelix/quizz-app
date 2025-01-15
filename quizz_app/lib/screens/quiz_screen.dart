import 'package:flutter/material.dart';
import '../models/category.dart';
import 'score_screen.dart';

class QuizScreen extends StatefulWidget {
  final Category category;

  QuizScreen({required this.category});

  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int currentIndex = 0;
  int score = 0;
  Color? _flashColor;

  void _answerQuestion(bool userAnswer) {
    final correctAnswer = widget.category.questions[currentIndex].answer;

    setState(() {
      _flashColor = userAnswer == correctAnswer
          ? Colors.green.withOpacity(0.5)
          : Colors.red.withOpacity(0.5);
    });

    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _flashColor = null;
      });

      if (userAnswer == correctAnswer) {
        score++;
      }

      if (currentIndex < widget.category.questions.length - 1) {
        setState(() {
          currentIndex++;
        });
      } else {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => ScoreScreen(score: score),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    final question = widget.category.questions[currentIndex];

    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        title: Text(widget.category.name),
      ),
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  question.imageUrl,
                  height: 180,
                  fit: BoxFit.cover,
                ),
                SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    question.question,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 24),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      onPressed: () => _answerQuestion(true),
                      child: Text('True'),
                    ),
                    SizedBox(width: 16),
                    ElevatedButton(
                      onPressed: () => _answerQuestion(false),
                      child: Text('False'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          if (_flashColor != null)
            AnimatedOpacity(
              duration: Duration(milliseconds: 300),
              opacity: 1.0,
              child: Container(
                color: _flashColor,
                width: double.infinity,
                height: double.infinity,
              ),
            ),
        ],
      ),
    );
  }
}
