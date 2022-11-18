import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/data_status.dart';
import '../../models/question_model.dart';
import '../../repositories/question/question_repository.dart';

part 'question_event.dart';
part 'question_state.dart';
part 'question_bloc.freezed.dart';

class QuestionBloc extends Bloc<QuestionEvent, QuestionState> {
  final QuestionRepository _questionRepository;
  QuestionBloc({
    required QuestionRepository questionRepository
}) : _questionRepository = questionRepository,
        super(QuestionState.initial()) {
    on<QuestionEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<Question>((event, emit) async{
      final result = await _questionRepository.allCategory();
      if (result.success) {
        emit(state.copyWith(
          questions: result.data ?? [],
          status: DataStatus.initial,
        ));
      }
    });
  }
}
