// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_answer_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckAnswerRequest _$CheckAnswerRequestFromJson(Map<String, dynamic> json) {
  return _CheckAnswerRequest.fromJson(json);
}

/// @nodoc
mixin _$CheckAnswerRequest {
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckAnswerRequestCopyWith<$Res> {
  factory $CheckAnswerRequestCopyWith(
          CheckAnswerRequest value, $Res Function(CheckAnswerRequest) then) =
      _$CheckAnswerRequestCopyWithImpl<$Res, CheckAnswerRequest>;
}

/// @nodoc
class _$CheckAnswerRequestCopyWithImpl<$Res, $Val extends CheckAnswerRequest>
    implements $CheckAnswerRequestCopyWith<$Res> {
  _$CheckAnswerRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckAnswerRequestCopyWith<$Res> {
  factory _$$_CheckAnswerRequestCopyWith(_$_CheckAnswerRequest value,
          $Res Function(_$_CheckAnswerRequest) then) =
      __$$_CheckAnswerRequestCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckAnswerRequestCopyWithImpl<$Res>
    extends _$CheckAnswerRequestCopyWithImpl<$Res, _$_CheckAnswerRequest>
    implements _$$_CheckAnswerRequestCopyWith<$Res> {
  __$$_CheckAnswerRequestCopyWithImpl(
      _$_CheckAnswerRequest _value, $Res Function(_$_CheckAnswerRequest) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_CheckAnswerRequest implements _CheckAnswerRequest {
  _$_CheckAnswerRequest();

  factory _$_CheckAnswerRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CheckAnswerRequestFromJson(json);

  @override
  String toString() {
    return 'CheckAnswerRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckAnswerRequest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckAnswerRequestToJson(
      this,
    );
  }
}

abstract class _CheckAnswerRequest implements CheckAnswerRequest {
  factory _CheckAnswerRequest() = _$_CheckAnswerRequest;

  factory _CheckAnswerRequest.fromJson(Map<String, dynamic> json) =
      _$_CheckAnswerRequest.fromJson;
}
