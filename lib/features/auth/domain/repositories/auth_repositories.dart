import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';

abstract class AuthRepository {
  FutureFailable<Token> loginUser(AuthParams params);

  FutureFailable<Token> registerUser(AuthParams params);
}
