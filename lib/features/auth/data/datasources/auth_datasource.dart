import 'package:dio/dio.dart';
import 'package:hospital_patient/features/auth/domain/entities/auth_params.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';

abstract class AuthDatasource {
  Future<Token> loginUser(AuthParams params);

  Future<Token> registerUser(AuthParams params);
}

class AuthDatasourceImpl extends AuthDatasource {
  AuthDatasourceImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<Token> loginUser(AuthParams params) async {
    final response = await dio.post('/patient/login', data: params.toJson());
    final result = Token.fromJson(response.data);
    return result;
  }

  @override
  Future<Token> registerUser(AuthParams params) async {
    await dio.post('/patient/register', data: params.toJson());
    final result = await loginUser(params);
    return result;
  }
}
