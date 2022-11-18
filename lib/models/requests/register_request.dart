
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_request.freezed.dart';
part 'register_request.g.dart';

@freezed
class RegisterRequest with _$RegisterRequest {
  factory RegisterRequest({
    required String name,
    required String email,
    required String password,
  }) = _RegisterRequest;
	
  factory RegisterRequest.fromJson(Map<String, dynamic> json) =>
			_$RegisterRequestFromJson(json);
  factory RegisterRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};
    return RegisterRequest.fromJson(data);
  }
}
