import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/features/home/domain/entities/medical_record.dart';

abstract class HomeRepository {
  FutureFailable<MedicalRecord> getMedicalRecord();
}
