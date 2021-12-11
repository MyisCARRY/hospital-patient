import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/core/error/repository_request_handler.dart';
import 'package:hospital_patient/core/helper/type_aliases.dart';
import 'package:hospital_patient/features/home/data/datasources/home_datasource.dart';
import 'package:hospital_patient/features/home/domain/entities/medical_record.dart';
import 'package:hospital_patient/features/home/domain/repositories/home_repository.dart';

class HomeRepositoryImpl extends HomeRepository {
  HomeRepositoryImpl({
    required this.datasource,
  });

  final HomeDatasource datasource;

  @override
  FutureFailable<MedicalRecord> getMedicalRecord() {
    return RepositoryRequestHandler<MedicalRecord>()(
      request: datasource.getMedicalRecord,
      defaultFailure: GetMedicalRecordFailure(),
    );
  }
}
