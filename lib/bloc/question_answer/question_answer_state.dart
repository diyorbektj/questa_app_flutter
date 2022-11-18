part of 'question_answer_bloc.dart';

@freezed
class QuestionAnswerState with _$QuestionAnswerState {
  const QuestionAnswerState._();

  factory QuestionAnswerState({
    required DataStatus status,
    required String message,
    required List<QuestionAnswerModel?> questionAnswers,
    QuestionAnswerModel? questionAnswer,
    required bool isTrue,
  }) = _QuestionAnswerState;
  factory QuestionAnswerState.initial(){
    return QuestionAnswerState(
        status: DataStatus.initial,
        message: '',
        isTrue: false,
        questionAnswers: [],
        questionAnswer: null,
    );
  }
}
