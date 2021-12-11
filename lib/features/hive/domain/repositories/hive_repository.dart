import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/features/hive/domain/entities/hive_save_param.dart';

abstract class HiveRepository {
  FutureFailable<T?> getField<T>(String fieldName);

  FutureFailable<bool> saveField(HiveSaveParam param);

  FutureFailable<bool> deleteField(String fieldName);
}
