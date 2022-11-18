
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts.freezed.dart';
part 'posts.g.dart';

@freezed
class Posts with _$Posts {
  factory Posts({
    required int id,
    required String title,
    required String description,
  }) = _Posts;
	
  factory Posts.fromJson(Map<String, dynamic> json) =>
			_$PostsFromJson(json);
}
