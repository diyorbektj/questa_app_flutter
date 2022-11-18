part of 'post_bloc.dart';

@freezed
class PostState with _$PostState {
  const PostState._();

  const factory PostState({
    required List<Posts> posts,
    Posts? post,
    required int page,
    required bool isLastPage,
    required DataStatus status,
    required String message,
  }) = _PostState;

  factory PostState.initial() {
    return const PostState(
        posts: [],
        post: null,
        page: 1,
        isLastPage: false,
        status: DataStatus.initial,
        message: ''
    );
  }
  bool get hasPosts => post != null;
}
