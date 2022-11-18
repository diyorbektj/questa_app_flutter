part of 'post_bloc.dart';

@freezed
class PostEvent with _$PostEvent {
  const factory PostEvent.started() = _Started;
  const factory PostEvent.create(CreatePostRequest request) = Create;
  const factory PostEvent.allPosts() = AllPosts;
  const factory PostEvent.update() = Update;
}
