import 'package:dio/dio.dart';
import 'package:hospital_patient/features/home/domain/entities/medical_record.dart';

abstract class HomeDatasource {
  Future<MedicalRecord> getMedicalRecord();
}

class HomeDatasourceImpl extends HomeDatasource {
  HomeDatasourceImpl({
    required this.dio,
  });

  final Dio dio;

  @override
  Future<MedicalRecord> getMedicalRecord() async {
    final response = await dio.get('/medical/patient');
    final result = MedicalRecord.fromJson(response.data);
    return result;
  }
}
