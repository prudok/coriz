import 'package:flutter/material.dart';

class QuizCard extends StatelessWidget {
  const QuizCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: const Center(
        child: Text(
          'Quiz',
          style: TextStyle(
            color: Colors.yellow,
            fontSize: 35,
          ),
        ),
      ),
    );
  }
}
