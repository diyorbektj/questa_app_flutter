import 'package:untitled1/models/app_response.dart';
import 'package:untitled1/models/requests/login_request.dart';
import 'package:untitled1/models/requests/register_request.dart';
import 'package:untitled1/models/user_model.dart';


abstract class BaseAuthRepository {
  Future<AppResponse<AuthUser?>> register(RegisterRequest request);
  Future<AppResponse<AuthUser?>> login(LoginRequest request);
  Future<AppResponse<UserEntity?>> loginWithToken();
  Future<AppResponse> logout();
}
