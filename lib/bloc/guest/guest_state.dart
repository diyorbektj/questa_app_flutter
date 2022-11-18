part of 'guest_bloc.dart';

@freezed
class GuestState with _$GuestState {

  const GuestState._();

 const factory GuestState({
    UserEntity? user,
    required DataStatus status,
    required String message
  }) = _GuestState;

  factory GuestState.initial() {
    return const GuestState(
      user: null,
      status: DataStatus.initial,
      message: "not",
    );
  }
  bool get hasUser => user != null;
}

