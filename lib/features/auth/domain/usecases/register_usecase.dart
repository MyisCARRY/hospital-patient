import 'package:dartz/dartz.dart';
import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/core/usecase/usecase.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';
import 'package:hospital_patient/features/auth/domain/repositories/auth_repositories.dart';

class RegisterUsecase extends Usecase<Token, AuthParams> {
  RegisterUsecase({
    required this.repository,
  });

  final AuthRepository repository;

  @override
  Future<Either<Failure, Token>> call(AuthParams param) {
    return repository.registerUser(param);
  }
}
