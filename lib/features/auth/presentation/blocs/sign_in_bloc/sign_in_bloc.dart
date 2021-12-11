import 'package:any_animated_button/any_animated_button.dart';
import 'package:dartz/dartz.dart';
import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';
import 'package:hospital_patient/features/auth/domain/usecases/login_usecase.dart';

class SignInBloc extends AnyAnimatedButtonBloc<AuthParams, Token, Failure> {
  SignInBloc({
    required this.loginUsecase,
  });

  final LoginUsecase loginUsecase;

  @override
  Future<Either<Failure, Token>> asyncAction(AuthParams input) {
    return loginUsecase(input);
  }
}
