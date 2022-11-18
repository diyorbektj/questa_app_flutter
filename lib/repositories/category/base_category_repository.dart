import 'package:untitled1/models/app_response.dart';

import '../../models/category_model.dart';



abstract class BaseCategoryRepository {
  Future<AppResponse<List<CategoryModel>?>>allCategory();
}
