import 'package:flutter/material.dart';
import 'quiz_screen.dart';
import '../models/category.dart';
import '../models/question.dart';

class CategoriesScreen extends StatelessWidget {
  final List<Category> categories = [
    Category(
      'History',
      'assets/images/history.png',
      [
        Question('Les pyramides de Gizeh sont en Égypte.',
            'assets/images/history_question.png', true),
        Question('La Première Guerre mondiale a commencé en 1920.',
            'assets/images/history_question.png', false),
        Question('Napoléon était empereur de France.',
            'assets/images/history_question.png', true),
      ],
    ),
    Category(
      'Math',
      'assets/images/math.png',
      [
        Question('2 + 2 = 4.', 'assets/images/math_question.png', true),
        Question('Un triangle a quatre côtés.',
            'assets/images/math_question.png', false),
        Question('La racine carrée de 9 est 3.',
            'assets/images/math_question.png', true),
      ],
    ),
    Category(
      'Geography',
      'assets/images/geography.png',
      [
        Question('La France est en Europe.',
            'assets/images/geography_question.png', true),
        Question('Le Nil traverse le Sahara.',
            'assets/images/geography_question.png', true),
        Question('Le Mont Everest est en Afrique.',
            'assets/images/geography_question.png', false),
      ],
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Category'),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          childAspectRatio: 3 / 2,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          final category = categories[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => QuizScreen(category: category),
                ),
              );
            },
            child: Card(
              elevation: 5,
              child: Column(
                children: [
                  Expanded(
                    child: Image.asset(
                      category.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      category.name,
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
