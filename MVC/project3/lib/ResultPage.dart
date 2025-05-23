import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final int totalScore;
  final String name;

  ResultPage({required this.totalScore, required this.name});

  @override
  Widget build(BuildContext context) {
    // Determine the color based on the score
    Color scoreColor = totalScore >= 6 ? Colors.green : Colors.red;
    String message = totalScore >= 6 
        ? 'Congratulations $name, you have passed!' 
        : 'Sorry $name, you have failed.';

    // Determine the image based on the score
    String imagePath = totalScore >= 6 ? 'assets/happy.png' : 'assets/sad.png';

    return Scaffold(
      appBar: AppBar(
        title: Text('Result'),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              imagePath,
              width: 100, // Set the width of the image
              height: 100, // Set the height of the image
            ),
            SizedBox(height: 20), // Add space between image and text
            Text(
              message,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: scoreColor),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20), // Add some space between messages
            Text(
              'You have scored: $totalScore',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: scoreColor),
            ),
          ],
        ),
      ),
    );
  }
}
