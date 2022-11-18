import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reactive_forms/reactive_forms.dart';
import 'package:untitled1/models/posts.dart';
import 'package:untitled1/models/requests/create_post_request.dart';
import 'package:untitled1/repositories/post/post_repository.dart';

import '../../enums/data_status.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_bloc.freezed.dart';

class PostBloc extends Bloc<PostEvent, PostState> {
  final PostRepository _postRepository;
  PostBloc({
    required PostRepository postRepository,
}) :  _postRepository = postRepository,
        super(PostState.initial()) {
    on<PostEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<Create>((event, emit) async{
      List<Posts> posts = [...state.posts];
      final result = await _postRepository.create(event.request);
      final post = [
        result.data!, ...posts
      ];
      emit(state.copyWith(posts: post));
    });
    on<AllPosts>((event, emit) async{
      final result = await _postRepository.getMany(currentPage: 1);
      emit(state.copyWith(status: DataStatus.loading));
      if (result.success) {
        emit(state.copyWith(
          posts: result.data ?? [],
          status: DataStatus.initial,
          isLastPage: false,
          page: 1,
        ));
      } else {
        emit(state.copyWith(
          message: result.message,
          status: DataStatus.error,
          isLastPage: false,
          page: 1,
        ));
      }
    });
  }

  FormGroup get formgroup => fb.group({
    'title': [
      state.hasPosts ? state.post!.title : "",
      Validators.required,
    ],
    'description': [
      state.hasPosts ? state.post!.description : "",
      Validators.required,
    ],

  });
}
