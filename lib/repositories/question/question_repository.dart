import 'package:dio/dio.dart';
import 'package:untitled1/models/app_response.dart';
import 'package:untitled1/models/question_answer_model.dart';
import 'package:untitled1/repositories/core/endpoint.dart';

import '../../models/question_model.dart';
import '../../utils/dio_client/dio_client.dart';
import 'base_question_repository.dart';

class QuestionRepository extends BaseQuestionRepository {
  QuestionRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @override
  Future<AppResponse<List<QuestionModel>?>> allCategory() async {
    final response = await _dioClient.get(Endpoints.questions);
    return AppResponse<List<QuestionModel>?>.fromJson(
        response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => QuestionModel.fromJson(e))
            .toList();
      }
      return null;
    });
  }

  @override
  Future<AppResponse<QuestionAnswerModel?>> checkAnswer(int id, String answer) async{
    final response =
        await _dioClient.post(Endpoints.checkQuestion, data: {'id': id, 'answer': answer});
    return AppResponse<QuestionAnswerModel?>.fromJson(
        response.data,
            (dynamic json) => response.data['success'] && json != null
            ? QuestionAnswerModel.fromJson(json)
            : null);
  }
}