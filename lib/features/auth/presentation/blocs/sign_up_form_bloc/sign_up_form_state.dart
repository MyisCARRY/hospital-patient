part of 'sign_up_form_bloc.dart';

@freezed
class SignUpFormState with _$SignUpFormState {
  factory SignUpFormState.data(AuthParams params, bool valid) = _Data;
}
