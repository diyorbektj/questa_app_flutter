
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer_model.freezed.dart';
part 'question_answer_model.g.dart';

@freezed
class QuestionAnswerModel with _$QuestionAnswerModel {
  factory QuestionAnswerModel({
    required int id,
    @JsonKey(name: "user_id") required int userId,
    @JsonKey(name: "question_id") required int questionId,
    required String answer,
    @JsonKey(name: "is_true") required bool isTrue
}) = _QuestionAnswerModel;
	
  factory QuestionAnswerModel.fromJson(Map<String, dynamic> json) =>
			_$QuestionAnswerModelFromJson(json);
}
