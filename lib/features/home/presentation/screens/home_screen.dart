import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital_patient/core/helper/widget_ext.dart';
import 'package:hospital_patient/core/navigator/navigator.dart';
import 'package:hospital_patient/core/presentation/appbars/title_appbar.dart';
import 'package:hospital_patient/core/presentation/widgets/custom_error_widget.dart';
import 'package:hospital_patient/core/presentation/widgets/custom_loading_widget.dart';
import 'package:hospital_patient/core/style/colors.dart';
import 'package:hospital_patient/features/auth/presentation/blocs/auth_bloc/auth_bloc.dart';
import 'package:hospital_patient/features/home/presentation/blocs/get_medical_record_bloc/get_medical_record_bloc.dart';
import 'package:hospital_patient/features/home/presentation/widgets/medical_record_content.dart';
import 'package:hospital_patient/injection_container.dart';

class HomeScreen extends StatefulWidget with NavigatedScreen {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();

  @override
  String get routeName => 'home_screen';
}

class _HomeScreenState extends State<HomeScreen> {
  late final GetMedicalRecordBloc _medicalRecordBloc;

  @override
  void initState() {
    _medicalRecordBloc = sl();
    _medicalRecordBloc.add(GetMedicalRecordEvent.load());

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.white,
      appBar: TitleAppBar(
        context,
        title: "Medical record",
        showLeading: false,
        actions: [
          InkWell(
            onTap: () => sl<AuthBloc>().add(AuthEvent.signOut()),
            child: const Icon(
              Icons.logout,
              color: CustomColors.blue,
            ),
          ).noSplash(),
        ],
      ),
      body: BlocBuilder(
        bloc: _medicalRecordBloc,
        builder: (BuildContext context, GetMedicalRecordState state) {
          return state.map(
            loading: (state) => const CustomLoadingWidget(),
            error: (state) => CustomErrorWidget(onRefresh: () => _medicalRecordBloc.add(GetMedicalRecordEvent.load())),
            data: (state) => MedicalRecordContent(
              medicalRecord: state.medicalRecord,
            ),
          );
        },
      ),
    );
  }
}
