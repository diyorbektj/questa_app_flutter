import 'package:dio/dio.dart';
import 'package:untitled1/models/app_response.dart';

import 'package:untitled1/models/category_model.dart';
import 'package:untitled1/repositories/core/endpoint.dart';

import '../../utils/dio_client/dio_client.dart';
import 'base_category_repository.dart';

class CategoryRepository extends BaseCategoryRepository {
  CategoryRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @override
  Future<AppResponse<List<CategoryModel>?>> allCategory() async {
    final response = await _dioClient.get(Endpoints.allCategory);
    return AppResponse<List<CategoryModel>?>.fromJson(
        response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => CategoryModel.fromJson(e))
            .toList();
      }
      return null;
    });
  }
}