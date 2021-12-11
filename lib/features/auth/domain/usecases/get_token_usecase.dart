import 'package:hospital_patient/core/helper/hive.dart';
import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/core/usecase/usecase.dart';
import 'package:hospital_patient/features/auth/domain/entities/token.dart';
import 'package:hospital_patient/features/hive/domain/use_cases/get_hive_field_usecase.dart';

class GetTokenUsecase extends Usecase<Token?, NoParams> {
  GetTokenUsecase({
    required this.getHiveFieldUsecase,
  });

  final GetHiveFieldUsecase<Token> getHiveFieldUsecase;

  @override
  FutureFailable<Token?> call(NoParams param) {
    return getHiveFieldUsecase(HiveNames.token);
  }
}
