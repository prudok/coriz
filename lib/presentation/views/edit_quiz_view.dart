import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quizzylite/core/extensions.dart';
import 'package:quizzylite/domain/entities/quiz.dart';
import 'package:quizzylite/generated/l10n.dart';
import 'package:quizzylite/presentation/module.dart';
import 'package:shortid/shortid.dart';
import 'package:translator/translator.dart';

class EditQuizView extends ConsumerStatefulWidget {
  const EditQuizView({super.key, this.quizId});
  static const routeName = '/edit';
  final String? quizId;

  @override
  ConsumerState<EditQuizView> createState() => _EditQuizViewState();
}

class _EditQuizViewState extends ConsumerState<EditQuizView> {
  final TextEditingController _wordController = TextEditingController();
  final TextEditingController _conceptController = TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final translator = GoogleTranslator();
  late final model = ref.read(quizModel);

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
  void dispose() {
    _wordController.dispose();
    _conceptController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final messenger = ScaffoldMessenger.of(context);
    final isNewQuiz = widget.quizId == null;
    return Scaffold(
      appBar: AppBar(
        title: Text(isNewQuiz ? S.of(context).newQuiz : S.of(context).editQuiz),
      ),
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              child: TextFormField(
                controller: _wordController,
                validator: _isCorrectInput,
                decoration: InputDecoration(
                  hintText: isNewQuiz
                      ? S.of(context).enterNewWord
                      : S.of(context).enterEditedWord,
                ),
              ),
            ),
            const SizedBox(height: 15),
            ElevatedButton(
              onPressed: () async {
                if (_wordController.text.isEmpty) {
                  return;
                }
                await translator
                    .translate(_wordController.text)
                    .then((translatedWord) {
                  if (translatedWord.text == _wordController.text) {
                    messenger.toast(S.of(context).couldntFoundTranslate);
                  } else {
                    _conceptController.text = translatedWord.text;
                  }
                });
              },
              child: Text(S.of(context).translateIntoRussian),
            ),
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 5,
              ),
              child: TextFormField(
                controller: _conceptController,
                validator: _isCorrectInput,
                decoration: InputDecoration(
                  hintText: isNewQuiz
                      ? S.of(context).enterNewConcept
                      : S.of(context).enterEditedConcept,
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
              final newQuiz = Quiz(
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
                  model.save(
                    qz.copyWith(
                      word: _wordController.text,
                      concept: _conceptController.text,
                    ),
                  );
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

  String? _isCorrectInput(String? value) {
    if (value == null || value.isEmpty) {
      return S.of(context).pleaseFillTheForm;
    } else {
      return null;
    }
  }
}
