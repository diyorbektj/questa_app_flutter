// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'question_answer_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$QuestionAnswerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id, String answer) checkAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id, String answer)? checkAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id, String answer)? checkAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CheckAnswer value) checkAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CheckAnswer value)? checkAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CheckAnswer value)? checkAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerEventCopyWith<$Res> {
  factory $QuestionAnswerEventCopyWith(
          QuestionAnswerEvent value, $Res Function(QuestionAnswerEvent) then) =
      _$QuestionAnswerEventCopyWithImpl<$Res, QuestionAnswerEvent>;
}

/// @nodoc
class _$QuestionAnswerEventCopyWithImpl<$Res, $Val extends QuestionAnswerEvent>
    implements $QuestionAnswerEventCopyWith<$Res> {
  _$QuestionAnswerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$QuestionAnswerEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'QuestionAnswerEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id, String answer) checkAnswer,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id, String answer)? checkAnswer,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id, String answer)? checkAnswer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CheckAnswer value) checkAnswer,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CheckAnswer value)? checkAnswer,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CheckAnswer value)? checkAnswer,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements QuestionAnswerEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$CheckAnswerCopyWith<$Res> {
  factory _$$CheckAnswerCopyWith(
          _$CheckAnswer value, $Res Function(_$CheckAnswer) then) =
      __$$CheckAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({int id, String answer});
}

/// @nodoc
class __$$CheckAnswerCopyWithImpl<$Res>
    extends _$QuestionAnswerEventCopyWithImpl<$Res, _$CheckAnswer>
    implements _$$CheckAnswerCopyWith<$Res> {
  __$$CheckAnswerCopyWithImpl(
      _$CheckAnswer _value, $Res Function(_$CheckAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? answer = null,
  }) {
    return _then(_$CheckAnswer(
      null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      null == answer
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$CheckAnswer implements CheckAnswer {
  const _$CheckAnswer(this.id, this.answer);

  @override
  final int id;
  @override
  final String answer;

  @override
  String toString() {
    return 'QuestionAnswerEvent.checkAnswer(id: $id, answer: $answer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CheckAnswer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.answer, answer) || other.answer == answer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, answer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CheckAnswerCopyWith<_$CheckAnswer> get copyWith =>
      __$$CheckAnswerCopyWithImpl<_$CheckAnswer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int id, String answer) checkAnswer,
  }) {
    return checkAnswer(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int id, String answer)? checkAnswer,
  }) {
    return checkAnswer?.call(id, answer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int id, String answer)? checkAnswer,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(id, answer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(CheckAnswer value) checkAnswer,
  }) {
    return checkAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(CheckAnswer value)? checkAnswer,
  }) {
    return checkAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(CheckAnswer value)? checkAnswer,
    required TResult orElse(),
  }) {
    if (checkAnswer != null) {
      return checkAnswer(this);
    }
    return orElse();
  }
}

abstract class CheckAnswer implements QuestionAnswerEvent {
  const factory CheckAnswer(final int id, final String answer) = _$CheckAnswer;

  int get id;
  String get answer;
  @JsonKey(ignore: true)
  _$$CheckAnswerCopyWith<_$CheckAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionAnswerState {
  DataStatus get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<QuestionAnswerModel?> get questionAnswers =>
      throw _privateConstructorUsedError;
  QuestionAnswerModel? get questionAnswer => throw _privateConstructorUsedError;
  bool get isTrue => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionAnswerStateCopyWith<QuestionAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionAnswerStateCopyWith<$Res> {
  factory $QuestionAnswerStateCopyWith(
          QuestionAnswerState value, $Res Function(QuestionAnswerState) then) =
      _$QuestionAnswerStateCopyWithImpl<$Res, QuestionAnswerState>;
  @useResult
  $Res call(
      {DataStatus status,
      String message,
      List<QuestionAnswerModel?> questionAnswers,
      QuestionAnswerModel? questionAnswer,
      bool isTrue});

  $QuestionAnswerModelCopyWith<$Res>? get questionAnswer;
}

/// @nodoc
class _$QuestionAnswerStateCopyWithImpl<$Res, $Val extends QuestionAnswerState>
    implements $QuestionAnswerStateCopyWith<$Res> {
  _$QuestionAnswerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? questionAnswers = null,
    Object? questionAnswer = freezed,
    Object? isTrue = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswers: null == questionAnswers
          ? _value.questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel?>,
      questionAnswer: freezed == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerModel?,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionAnswerModelCopyWith<$Res>? get questionAnswer {
    if (_value.questionAnswer == null) {
      return null;
    }

    return $QuestionAnswerModelCopyWith<$Res>(_value.questionAnswer!, (value) {
      return _then(_value.copyWith(questionAnswer: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_QuestionAnswerStateCopyWith<$Res>
    implements $QuestionAnswerStateCopyWith<$Res> {
  factory _$$_QuestionAnswerStateCopyWith(_$_QuestionAnswerState value,
          $Res Function(_$_QuestionAnswerState) then) =
      __$$_QuestionAnswerStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {DataStatus status,
      String message,
      List<QuestionAnswerModel?> questionAnswers,
      QuestionAnswerModel? questionAnswer,
      bool isTrue});

  @override
  $QuestionAnswerModelCopyWith<$Res>? get questionAnswer;
}

/// @nodoc
class __$$_QuestionAnswerStateCopyWithImpl<$Res>
    extends _$QuestionAnswerStateCopyWithImpl<$Res, _$_QuestionAnswerState>
    implements _$$_QuestionAnswerStateCopyWith<$Res> {
  __$$_QuestionAnswerStateCopyWithImpl(_$_QuestionAnswerState _value,
      $Res Function(_$_QuestionAnswerState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? questionAnswers = null,
    Object? questionAnswer = freezed,
    Object? isTrue = null,
  }) {
    return _then(_$_QuestionAnswerState(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as DataStatus,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      questionAnswers: null == questionAnswers
          ? _value._questionAnswers
          : questionAnswers // ignore: cast_nullable_to_non_nullable
              as List<QuestionAnswerModel?>,
      questionAnswer: freezed == questionAnswer
          ? _value.questionAnswer
          : questionAnswer // ignore: cast_nullable_to_non_nullable
              as QuestionAnswerModel?,
      isTrue: null == isTrue
          ? _value.isTrue
          : isTrue // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_QuestionAnswerState extends _QuestionAnswerState {
  _$_QuestionAnswerState(
      {required this.status,
      required this.message,
      required final List<QuestionAnswerModel?> questionAnswers,
      this.questionAnswer,
      required this.isTrue})
      : _questionAnswers = questionAnswers,
        super._();

  @override
  final DataStatus status;
  @override
  final String message;
  final List<QuestionAnswerModel?> _questionAnswers;
  @override
  List<QuestionAnswerModel?> get questionAnswers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionAnswers);
  }

  @override
  final QuestionAnswerModel? questionAnswer;
  @override
  final bool isTrue;

  @override
  String toString() {
    return 'QuestionAnswerState(status: $status, message: $message, questionAnswers: $questionAnswers, questionAnswer: $questionAnswer, isTrue: $isTrue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QuestionAnswerState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality()
                .equals(other._questionAnswers, _questionAnswers) &&
            (identical(other.questionAnswer, questionAnswer) ||
                other.questionAnswer == questionAnswer) &&
            (identical(other.isTrue, isTrue) || other.isTrue == isTrue));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_questionAnswers),
      questionAnswer,
      isTrue);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_QuestionAnswerStateCopyWith<_$_QuestionAnswerState> get copyWith =>
      __$$_QuestionAnswerStateCopyWithImpl<_$_QuestionAnswerState>(
          this, _$identity);
}

abstract class _QuestionAnswerState extends QuestionAnswerState {
  factory _QuestionAnswerState(
      {required final DataStatus status,
      required final String message,
      required final List<QuestionAnswerModel?> questionAnswers,
      final QuestionAnswerModel? questionAnswer,
      required final bool isTrue}) = _$_QuestionAnswerState;
  _QuestionAnswerState._() : super._();

  @override
  DataStatus get status;
  @override
  String get message;
  @override
  List<QuestionAnswerModel?> get questionAnswers;
  @override
  QuestionAnswerModel? get questionAnswer;
  @override
  bool get isTrue;
  @override
  @JsonKey(ignore: true)
  _$$_QuestionAnswerStateCopyWith<_$_QuestionAnswerState> get copyWith =>
      throw _privateConstructorUsedError;
}
