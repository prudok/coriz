import 'package:flutter/material.dart';

import '../../domain/entities/quiz/quiz.dart';

class QuizCard extends StatefulWidget {
  final Quiz quiz;

  const QuizCard({super.key, required this.quiz});
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
          borderRadius: BorderRadius.circular(20.0),
        ),
        child: Center(
          child: Text(
            !showConcept ? widget.quiz.word: widget.quiz.concept,
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
