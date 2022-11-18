part of 'question_bloc.dart';

@freezed
class QuestionState with _$QuestionState {
  const QuestionState._();

  factory QuestionState({
    required DataStatus status,
    required String message,
    required List<QuestionModel?> questions,
  }) = _QuestionState;
  factory QuestionState.initial(){
    return QuestionState(
        status: DataStatus.initial,
        message: '',
        questions: []
    );
}
}
