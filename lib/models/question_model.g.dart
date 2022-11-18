// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionModel _$$_QuestionModelFromJson(Map<String, dynamic> json) =>
    _$_QuestionModel(
      id: json['id'] as int,
      title: json['title'] as String,
      A: json['A'] as String,
      B: json['B'] as String,
      C: json['C'] as String,
      D: json['D'] as String,
      answer: json['answer'] as String,
      categoryId: json['category_id'] as int,
      userId: json['user_id'] as int,
    );

Map<String, dynamic> _$$_QuestionModelToJson(_$_QuestionModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'A': instance.A,
      'B': instance.B,
      'C': instance.C,
      'D': instance.D,
      'answer': instance.answer,
      'category_id': instance.categoryId,
      'user_id': instance.userId,
    };
