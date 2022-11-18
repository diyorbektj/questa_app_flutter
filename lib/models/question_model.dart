
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_model.freezed.dart';
part 'question_model.g.dart';

@freezed
class QuestionModel with _$QuestionModel {
  factory QuestionModel({
    required int id,
    required String title,
    required String A,
    required String B,
    required String C,
    required String D,
    required String answer,
    @JsonKey(name: "category_id") required int categoryId,
    @JsonKey(name: "user_id") required int userId,
}) = _QuestionModel;
	
  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
			_$QuestionModelFromJson(json);
}
