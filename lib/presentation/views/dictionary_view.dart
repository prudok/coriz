import 'package:flutter/material.dart';
import 'package:quizzylite/presentation/widgets/quizzlite.dart';

class DictionaryView extends StatelessWidget {
  const DictionaryView({Key? key}) : super(key: key);
  static const routeName = '/dictionary';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Your Dictionary'),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 10,
        itemBuilder: (_, __) {
          return const QuizzLite();
        },
      ),
    );
  }
}
