
import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_answer_request.freezed.dart';
part 'check_answer_request.g.dart';

@freezed
class CheckAnswerRequest with _$CheckAnswerRequest {
  factory CheckAnswerRequest() = _CheckAnswerRequest;
	
  factory CheckAnswerRequest.fromJson(Map<String, dynamic> json) =>
			_$CheckAnswerRequestFromJson(json);
}
