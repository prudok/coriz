import 'package:flutter/material.dart';

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
            TextFormField(
              controller: _wordController,
              validator: isCorrectInput,
              decoration: const InputDecoration(
                hintText: 'Enter edited word',
              ),
            ),
            TextFormField(
              controller: _conceptController,
              validator: isCorrectInput,
              decoration: const InputDecoration(
                hintText: 'Enter edited concept',
                suffixIcon: Icon(Icons.transcribe),
              ),
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
