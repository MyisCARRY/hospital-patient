import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/core/usecase/usecase.dart';
import 'package:hospital_patient/features/hive/domain/repositories/hive_repository.dart';

class GetHiveFieldUsecase<T> extends Usecase<T?, String> {
  GetHiveFieldUsecase({
    required this.repository,
  });

  final HiveRepository repository;

  @override
  FutureFailable<T?> call(String param) {
    return repository.getField<T>(param);
  }
}
