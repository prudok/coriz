import 'package:flutter/material.dart';

class QuizzCard extends StatelessWidget {
  const QuizzCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      //TODO: check better variant how to center child element, add functionality and use width and height
      child: Card(
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
      ),
    );
  }
}

Row userNavigation() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_left,
          color: Colors.white,
          size: 55,
        ),
      ),
      Text(
        'Quiz',
        style: TextStyle(
          color: Colors.yellow,
          fontSize: 35,
        ),
      ),
      IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_right,
          color: Colors.white,
          size: 55,
        ),
      ),
    ],
  );
}
