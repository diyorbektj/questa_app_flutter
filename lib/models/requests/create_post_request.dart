import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_post_request.freezed.dart';
part 'create_post_request.g.dart';

@freezed
class CreatePostRequest with _$CreatePostRequest {
  factory CreatePostRequest({
    required String title,
    required String description
}) = _CreatePostRequest;
	
  factory CreatePostRequest.fromJson(Map<String, dynamic> json) =>
			_$CreatePostRequestFromJson(json);
  factory CreatePostRequest.fromFromGroup(Map<String, dynamic> json) {
    Map<String, dynamic> data = {...json};
    return CreatePostRequest.fromJson(data);
  }
}
