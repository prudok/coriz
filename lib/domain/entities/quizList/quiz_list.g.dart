// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuizList _$$_QuizListFromJson(Map<String, dynamic> json) => _$_QuizList(
      quizList: (json['quizList'] as List<dynamic>?)
              ?.map((e) => Quiz.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_QuizListToJson(_$_QuizList instance) =>
    <String, dynamic>{
      'quizList': instance.quizList,
    };
