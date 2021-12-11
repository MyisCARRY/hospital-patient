part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormEvent with _$SignUpFormEvent {
  factory SignUpFormEvent.changeLogin(String login) = _ChangeLogin;

  factory SignUpFormEvent.changePassword(String password) = _ChangePassword;
}
