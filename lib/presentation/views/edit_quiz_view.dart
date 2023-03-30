import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class EditQuizView extends StatefulWidget {
  const EditQuizView({super.key, this.quizId});

  static const routeName = '/edit';
  final String? quizId;

  @override
  State<EditQuizView> createState() => _EditQuizViewState();
}

class _EditQuizViewState extends State<EditQuizView> {
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _conceptController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Quiz'),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TextFormField(
                controller: _wordController,
                validator: isCorrectInput,
                decoration: const InputDecoration(
                  hintText: 'Enter edited word',
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.transform,
                size: 30,
                color: AppColors.secondary,
              ),
              style: IconButton.styleFrom(
                backgroundColor: AppColors.lightGrey,
                padding: const EdgeInsets.all(15.0),
              ),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 15.0),
              child: TextFormField(
                controller: _conceptController,
                validator: isCorrectInput,
                decoration: const InputDecoration(
                  hintText: 'Enter edited concept',
                  suffixIcon: Icon(Icons.question_answer),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.lightGrey,
                foregroundColor: AppColors.secondary,
              ),
              child: const Text('Save'),
            ),
          ],
        ),
      ),
    );
  }

  String? isCorrectInput(String? value) {
    if (value == null) {
      return 'Please, fill the form.';
    } else {
      return null;
    }
  }
}
