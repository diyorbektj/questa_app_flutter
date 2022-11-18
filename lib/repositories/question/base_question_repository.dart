import 'package:untitled1/models/app_response.dart';
import 'package:untitled1/models/question_answer_model.dart';
import 'package:untitled1/models/question_model.dart';




abstract class BaseQuestionRepository {
  Future<AppResponse<List<QuestionModel>?>>allCategory();
  Future<AppResponse<QuestionAnswerModel?>>checkAnswer(int id, String answer);
}
