// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'quiz.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Quiz _$$_QuizFromJson(Map<String, dynamic> json) => _$_Quiz(
      word: json['word'] as String,
      concept: json['concept'] as String,
      isLearned: json['isLearned'] as bool,
      isFavorite: json['isFavorite'] as bool,
    );

Map<String, dynamic> _$$_QuizToJson(_$_Quiz instance) => <String, dynamic>{
      'word': instance.word,
      'concept': instance.concept,
      'isLearned': instance.isLearned,
      'isFavorite': instance.isFavorite,
    };
