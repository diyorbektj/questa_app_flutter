// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_post_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreatePostRequest _$CreatePostRequestFromJson(Map<String, dynamic> json) {
  return _CreatePostRequest.fromJson(json);
}

/// @nodoc
mixin _$CreatePostRequest {
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreatePostRequestCopyWith<CreatePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreatePostRequestCopyWith<$Res> {
  factory $CreatePostRequestCopyWith(
          CreatePostRequest value, $Res Function(CreatePostRequest) then) =
      _$CreatePostRequestCopyWithImpl<$Res, CreatePostRequest>;
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class _$CreatePostRequestCopyWithImpl<$Res, $Val extends CreatePostRequest>
    implements $CreatePostRequestCopyWith<$Res> {
  _$CreatePostRequestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CreatePostRequestCopyWith<$Res>
    implements $CreatePostRequestCopyWith<$Res> {
  factory _$$_CreatePostRequestCopyWith(_$_CreatePostRequest value,
          $Res Function(_$_CreatePostRequest) then) =
      __$$_CreatePostRequestCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String description});
}

/// @nodoc
class __$$_CreatePostRequestCopyWithImpl<$Res>
    extends _$CreatePostRequestCopyWithImpl<$Res, _$_CreatePostRequest>
    implements _$$_CreatePostRequestCopyWith<$Res> {
  __$$_CreatePostRequestCopyWithImpl(
      _$_CreatePostRequest _value, $Res Function(_$_CreatePostRequest) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
  }) {
    return _then(_$_CreatePostRequest(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreatePostRequest implements _CreatePostRequest {
  _$_CreatePostRequest({required this.title, required this.description});

  factory _$_CreatePostRequest.fromJson(Map<String, dynamic> json) =>
      _$$_CreatePostRequestFromJson(json);

  @override
  final String title;
  @override
  final String description;

  @override
  String toString() {
    return 'CreatePostRequest(title: $title, description: $description)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreatePostRequest &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreatePostRequestCopyWith<_$_CreatePostRequest> get copyWith =>
      __$$_CreatePostRequestCopyWithImpl<_$_CreatePostRequest>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreatePostRequestToJson(
      this,
    );
  }
}

abstract class _CreatePostRequest implements CreatePostRequest {
  factory _CreatePostRequest(
      {required final String title,
      required final String description}) = _$_CreatePostRequest;

  factory _CreatePostRequest.fromJson(Map<String, dynamic> json) =
      _$_CreatePostRequest.fromJson;

  @override
  String get title;
  @override
  String get description;
  @override
  @JsonKey(ignore: true)
  _$$_CreatePostRequestCopyWith<_$_CreatePostRequest> get copyWith =>
      throw _privateConstructorUsedError;
}
