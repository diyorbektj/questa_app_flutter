import 'package:dio/dio.dart';
import 'package:untitled1/models/app_response.dart';
import 'package:untitled1/models/posts.dart';
import 'package:untitled1/models/requests/create_post_request.dart';
import 'package:untitled1/repositories/post/base_post_repository.dart';

import '../../utils/dio_client/dio_client.dart';
import '../core/endpoint.dart';

class PostRepository extends BasePostRepository{
  PostRepository({
    Dio? dioClient,
  }) : _dioClient = dioClient ?? DioClient().dio;

  final Dio _dioClient;

  @override
  Future<AppResponse<Posts?>> create(CreatePostRequest request) async{
    final response = await _dioClient.post(
      Endpoints.noteCreate,
      data: request.toJson(),
    );

    return AppResponse<Posts?>.fromJson(
      response.data,
          (dynamic json) => response.data['success'] && json != null
          ? Posts.fromJson(json)
          : null,
    );
  }

  @override
  Future<AppResponse<List<Posts>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  }) async {
    final response = await _dioClient.get(
      Endpoints.noteGetMany,
      queryParameters: {'page': currentPage, 'page_size': pageSize},
    );

    return AppResponse<List<Posts>?>.fromJson(response.data, (dynamic json) {
      if (json != null && response.data['success']) {
        return (json as List<dynamic>)
            .map((e) => Posts.fromJson(e))
            .toList();
      }
      return null;
    });
  }
}