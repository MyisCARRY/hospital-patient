import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/core/error/repository_request_handler.dart';
import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/features/auth/data/datasources/auth_datasource.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';
import 'package:hospital_patient/features/auth/domain/repositories/auth_repositories.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({
    required this.datasource,
  });

  final AuthDatasource datasource;

  @override
  FutureFailable<Token> loginUser(AuthParams params) {
    return RepositoryRequestHandler<Token>()(
      request: () => datasource.loginUser(params),
      defaultFailure: LoginFailure(),
    );
  }

  @override
  FutureFailable<Token> registerUser(AuthParams params) {
    return RepositoryRequestHandler<Token>()(
      request: () => datasource.registerUser(params),
      defaultFailure: RegisterFailure(),
    );
  }
}
