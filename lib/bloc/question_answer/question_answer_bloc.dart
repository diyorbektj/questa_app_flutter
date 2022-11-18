import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../enums/data_status.dart';
import '../../models/question_answer_model.dart';
import '../../repositories/question/question_repository.dart';

part 'question_answer_event.dart';
part 'question_answer_state.dart';
part 'question_answer_bloc.freezed.dart';

class QuestionAnswerBloc extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  final QuestionRepository _questionRepository;
  QuestionAnswerBloc({
    required QuestionRepository questionRepository
  }) : _questionRepository = questionRepository,
        super(QuestionAnswerState.initial()) {
    on<QuestionAnswerEvent>((event, emit) {
      // TODO: implement event handler
    });
    on<CheckAnswer>((event, emit) async{
      final result = await _questionRepository.checkAnswer(event.id, event.answer);
      if(result.success){
        emit(state.copyWith(
          questionAnswer: result.data,
          questionAnswers: [result.data, ...state.questionAnswers],
          isTrue: result.data!.isTrue,
        ));
      }
    });
  }
}
