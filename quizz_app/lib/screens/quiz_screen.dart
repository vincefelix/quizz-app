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
      // Détermine la couleur du flash (vert si correct, rouge si incorrect)
      _flashColor = userAnswer == correctAnswer
          ? Colors.green.withOpacity(0.5)
          : Colors.red.withOpacity(0.5);
    });

    // Affiche le flash pendant 500 ms avant de passer à la question suivante
    Future.delayed(Duration(milliseconds: 500), () {
      setState(() {
        _flashColor = null; // Supprime le flash
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
          Column(
            children: [
              Image.asset(question.imageUrl, height: 200, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  question.question,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    onPressed: () => _answerQuestion(true),
                    child: Text('True'),
                  ),
                  ElevatedButton(
                    onPressed: () => _answerQuestion(false),
                    child: Text('False'),
                  ),
                ],
              ),
            ],
          ),
          // Flash overlay
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
