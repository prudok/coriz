import 'package:flutter/material.dart';
import 'package:quizzylite/domain/entities/quiz.dart';

class QuizCard extends StatefulWidget {
  const QuizCard({required this.quiz, super.key});

  final Quiz quiz;
  @override
  State<QuizCard> createState() => _QuizCardState();
}

class _QuizCardState extends State<QuizCard> {
  bool showConcept = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        setState(() {
          showConcept = !showConcept;
        });
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            !showConcept ? widget.quiz.word : widget.quiz.concept,
            softWrap: true,
            style: const TextStyle(
              color: Colors.yellow,
              fontSize: 35,
            ),
          ),
        ),
      ),
    );
  }
}
