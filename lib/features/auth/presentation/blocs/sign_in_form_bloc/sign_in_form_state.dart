part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormState with _$SignInFormState {
  factory SignInFormState.data(AuthParams params, bool valid) = _Data;
}
