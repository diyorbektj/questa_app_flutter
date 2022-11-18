part of 'question_answer_bloc.dart';

@freezed
class QuestionAnswerEvent with _$QuestionAnswerEvent {
  const factory QuestionAnswerEvent.started() = _Started;
  const factory QuestionAnswerEvent.checkAnswer(int id, String answer) = CheckAnswer;
}