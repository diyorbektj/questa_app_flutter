// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_QuestionAnswerModel _$$_QuestionAnswerModelFromJson(
        Map<String, dynamic> json) =>
    _$_QuestionAnswerModel(
      id: json['id'] as int,
      userId: json['user_id'] as int,
      questionId: json['question_id'] as int,
      answer: json['answer'] as String,
      isTrue: json['is_true'] as bool,
    );

Map<String, dynamic> _$$_QuestionAnswerModelToJson(
        _$_QuestionAnswerModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user_id': instance.userId,
      'question_id': instance.questionId,
      'answer': instance.answer,
      'is_true': instance.isTrue,
    };
