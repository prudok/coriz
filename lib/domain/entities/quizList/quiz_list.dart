import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

import '../quiz/quiz.dart';

part 'quiz_list.freezed.dart';

part 'quiz_list.g.dart';

@freezed
class QuizList with _$QuizList {
  const factory QuizList({
    @Default([]) List<Quiz> quizList,
  }) = _QuizList;

  factory QuizList.fromJson(Map<String, Object?> json) => _$QuizListFromJson(json);
}
