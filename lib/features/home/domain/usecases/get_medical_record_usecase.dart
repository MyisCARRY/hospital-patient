import 'package:dartz/dartz.dart';
import 'package:hospital_patient/core/error/failures.dart';
import 'package:hospital_patient/core/usecase/usecase.dart';
import 'package:hospital_patient/features/home/domain/entities/medical_record.dart';
import 'package:hospital_patient/features/home/domain/repositories/home_repository.dart';

class GetMedicalRecordUsecase extends Usecase<MedicalRecord, NoParams> {
  GetMedicalRecordUsecase({
    required this.repository,
  });

  final HomeRepository repository;

  @override
  Future<Either<Failure, MedicalRecord>> call(NoParams param) {
    return repository.getMedicalRecord();
  }
}
