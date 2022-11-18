import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_answer_event.dart';
part 'question_answer_state.dart';
part 'question_answer_bloc.freezed.dart';

class QuestionAnswerBloc extends Bloc<QuestionAnswerEvent, QuestionAnswerState> {
  QuestionAnswerBloc() : super(_Initial()) {
    on<QuestionAnswerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
