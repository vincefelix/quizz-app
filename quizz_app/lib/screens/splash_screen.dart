import 'package:flutter/material.dart';
import 'categories_screen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => CategoriesScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Stack(
        children: [
          // Contenu centré
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.quiz, size: 100, color: Colors.white),
                SizedBox(height: 20),
                Text(
                  'Welcome to Quiz App',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          // Texte en bas à droite
          Positioned(
            bottom: 16,
            right: 16,
            child: Text(
              'Designed by Vince',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
                fontStyle: FontStyle.italic,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
