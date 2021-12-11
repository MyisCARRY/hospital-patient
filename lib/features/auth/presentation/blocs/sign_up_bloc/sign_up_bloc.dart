import 'package:any_animated_button/any_animated_button.dart';
import 'package:dartz/dartz.dart';
import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';
import 'package:hospital_patient/features/auth/domain/usecases/register_usecase.dart';

class SignUpBloc extends AnyAnimatedButtonBloc<AuthParams, Token, Failure> {
  SignUpBloc({
    required this.registerUsecase,
  });

  final RegisterUsecase registerUsecase;

  @override
  Future<Either<Failure, Token>> asyncAction(AuthParams input) {
    return registerUsecase(input);
  }
}
