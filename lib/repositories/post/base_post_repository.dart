import '../../models/app_response.dart';
import '../../models/posts.dart';
import '../../models/requests/create_post_request.dart';

abstract class BasePostRepository{
  Future<AppResponse<List<Posts>?>> getMany({
    required int currentPage,
    int pageSize = 15,
  });
  Future<AppResponse<Posts?>> create(CreatePostRequest request);
}