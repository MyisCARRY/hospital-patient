import 'package:dio/dio.dart';
import 'package:hospital_patient/features/home/data/datasources/home_datasource.dart';
import 'package:hospital_patient/features/home/data/repositories/home_repository.dart';
import 'package:hospital_patient/features/home/domain/repositories/home_repository.dart';
import 'package:hospital_patient/features/home/domain/usecases/get_medical_record_usecase.dart';
import 'package:hospital_patient/features/home/presentation/blocs/get_medical_record_bloc/get_medical_record_bloc.dart';
import 'package:hospital_patient/injection_container.dart';

mixin HomeInjector on Injector {
  @override
  Future<void> init() async {
    await super.init();
    final dio = sl<Dio>(instanceName: globalDio);

    // blocs
    sl.registerFactory(() => GetMedicalRecordBloc(getMedicalRecordUsecase: sl()));

    // use cases
    sl.registerLazySingleton(() => GetMedicalRecordUsecase(repository: sl()));

    // repositories
    sl.registerLazySingleton<HomeRepository>(() => HomeRepositoryImpl(datasource: sl()));

    // data sources
    sl.registerLazySingleton<HomeDatasource>(() => HomeDatasourceImpl(dio: dio));
  }
}
