import 'package:untitled1/models/app_response.dart';
import 'package:untitled1/models/question_model.dart';




abstract class BaseQuestionRepository {
  Future<AppResponse<List<QuestionModel>?>>allCategory();
}
