import 'package:flutter/material.dart';
import 'package:project3/ResultPage.dart';

class QuestionPaper extends StatefulWidget {
  final String name; // Accept the name from the home page

  QuestionPaper({required this.name}); // Constructor to receive the name

  @override
  _QuestionPaperState createState() => _QuestionPaperState();
}

class _QuestionPaperState extends State<QuestionPaper> {
  final List<Question> questions = [
    Question('What is the capital of France?', 'Paris', [
      'Berlin',
      'Madrid',
      'Paris',
      'Rome',
    ]),
    Question('Who is known as the god of cricket?', 'Sachin Tendulkar', [
      'Brian Lara',
      'Sachin Tendulkar',
      'Ricky Ponting',
      'Virat Kohli',
    ]),
    Question('What is the largest planet?', 'Jupiter', [
      'Earth',
      'Mars',
      'Jupiter',
      'Saturn',
    ]),
    Question('What is the boiling point of water?', '100°C', [
      '90°C',
      '100°C',
      '110°C',
      '120°C',
    ]),
    Question('Who is known as the GOAT of football?', 'Cristiano Ronaldo', [
      'Lionel Messi',
      'Cristiano Ronaldo',
      'Pelé',
      'Diego Maradona',
    ]),
    Question('What is the speed of light?', '299,792 km/s', [
      '150,000 km/s',
      '299,792 km/s',
      '300,000 km/s',
      '400,000 km/s',
    ]),
    Question('What is the currency of Japan?', 'Yen', [
      'Dollar',
      'Yen',
      'Euro',
      'Won',
    ]),
    Question('What is the largest ocean?', 'Pacific Ocean', [
      'Atlantic Ocean',
      'Indian Ocean',
      'Arctic Ocean',
      'Pacific Ocean',
    ]),
    Question('What is the main ingredient in guacamole?', 'Avocado', [
      'Tomato',
      'Avocado',
      'Onion',
      'Pepper',
    ]),
    Question('What is the powerhouse of the cell?', 'Mitochondria', [
      'Nucleus',
      'Ribosome',
      'Mitochondria',
      'Endoplasmic Reticulum',
    ]),
  ];

  List<String?> selectedAnswers = List.filled(10, null);
  int totalScore = 0;

  void submitAnswers(BuildContext context) {
    totalScore = 0;
    for (int i = 0; i < questions.length; i++) {
      if (selectedAnswers[i] == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Please answer all questions.'),
          ),
        );
        return;
      } else if (selectedAnswers[i] == questions[i].correctAnswer) {
        totalScore++;
      }
    }
    // Pass the name to the ResultPage
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => ResultPage(totalScore: totalScore, name: widget.name), // Use widget.name
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Question Paper',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Enter your name',
                border: OutlineInputBorder(),
              ),
              enabled: false, // Disable editing since the name is already passed
              controller: TextEditingController(text: widget.name), // Display the passed name
            ),
            SizedBox(height: 16), // Add space between the text field and the list
            Expanded(
              child: ListView.builder(
                itemCount: questions.length,
                itemBuilder: (context, index) {
                  return QuestionWidget(
                    question: questions[index],
                    onChanged: (value) {
                      setState(() {
                        selectedAnswers[index] = value;
                      });
                    },
                    groupValue: selectedAnswers[index],
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => submitAnswers(context),
        child: Text('Submit', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}

class Question {
  final String questionText;
  final String correctAnswer;
  final List<String> options;

  Question(this.questionText, this.correctAnswer, this.options);
}

class QuestionWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<String?> onChanged;
  final String? groupValue;

  const QuestionWidget({
    Key? key,
    required this.question,
    required this.onChanged,
    required this.groupValue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      elevation: 4, // Add elevation for a shadow effect
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              question.questionText,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10), // Add space between question and options
            ...question.options.map((option) {
              return RadioListTile<String>(
                title: Text(option),
                value: option,
                groupValue: groupValue,
                onChanged: onChanged,
                activeColor: Colors.blueAccent, // Change the active color of the radio button
              );
            }).toList(),
          ],
        ),
      ),
    );
  }
}
