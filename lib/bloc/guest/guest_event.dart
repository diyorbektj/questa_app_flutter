part of 'guest_bloc.dart';

@freezed
class GuestEvent with _$GuestEvent {
  const factory GuestEvent.started() = _Started;
  const factory GuestEvent.login(LoginRequest request) = Login;
  const factory GuestEvent.register(RegisterRequest request) = Register;
  const factory GuestEvent.logout() = Logout;
}
