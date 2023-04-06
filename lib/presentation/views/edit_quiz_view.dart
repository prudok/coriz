import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:shortid/shortid.dart';
import 'package:translator/translator.dart';

import '../../domain/entities/quiz/quiz.dart';
import '../viewmodel/module.dart';
import '../widgets/extensions/extensions.dart';

class EditQuizView extends ConsumerStatefulWidget {
  const EditQuizView({super.key, this.quizId});

  static const routeName = '/edit';
  final String? quizId;

  @override
  ConsumerState<EditQuizView> createState() => _EditQuizViewState();
}

class _EditQuizViewState extends ConsumerState<EditQuizView> {
  //TODO: Dispose these ones
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _conceptController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final translator = GoogleTranslator();

  late final model = ref.read(quizListModel);

  @override
  void initState() {
    super.initState();

    if (widget.quizId != null) {
      model.get(widget.quizId!).then((qz) {
        if (qz != null) {
          _wordController.text = qz.word;
          _conceptController.text = qz.concept;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);
    final isNewQuiz = widget.quizId == null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isNewQuiz ? 'New Quiz!' : 'Edit Quiz'),
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
                decoration: InputDecoration(
                  hintText: isNewQuiz ? 'Enter new word' : 'Enter edited word',
                ),
              ),
            ),
            const SizedBox(height: 15.0),
            ElevatedButton(
              onPressed: () async {
                if (_wordController.text.isEmpty) {
                  return;
                }
                await translator
                    .translate(
                  _wordController.text,
                  to: 'ru',
                )
                    .then((translatedWord) {
                  if (translatedWord.text == _wordController.text) {
                    messenger.toast("Couldn't Found Translate");
                  } else {
                    _conceptController.text = translatedWord.text;
                  }
                });
              },
              child: const Text('Translate'),
            ),
            Container(
              margin:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: TextFormField(
                controller: _conceptController,
                validator: isCorrectInput,
                decoration: InputDecoration(
                  hintText:
                      isNewQuiz ? 'Enter new concept' : 'Enter edited concept',
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            _formKey.currentState!.save();
            if (isNewQuiz) {
              Quiz newQuiz = Quiz(
                id: shortid.generate(),
                word: _wordController.text,
                concept: _conceptController.text,
                isLearned: false,
                isFavorite: false,
              );
              model.save(newQuiz);
            } else {
              model.get(widget.quizId!).then((qz) {
                if (qz != null) {
                  model.save(qz.copyWith(
                    word: _wordController.text,
                    concept: _conceptController.text,
                  ));
                }
              });
            }
            if (context.canPop()) {
              context.pop();
            }
          }
        },
        child: const Icon(Icons.save_alt),
      ),
    );
  }

  String? isCorrectInput(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please, fill the form.';
    } else {
      return null;
    }
  }
}
