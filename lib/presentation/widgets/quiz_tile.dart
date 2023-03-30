import 'package:flutter/material.dart';

class QuizTile extends StatelessWidget {
  const QuizTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ListTile(
      title: Text('Word'),
      tileColor: Colors.white24,
      trailing: IconButton(
        onPressed: null,
        icon: Icon(Icons.star),
      ),
      contentPadding: EdgeInsets.all(5.0),
    );
  }
}
