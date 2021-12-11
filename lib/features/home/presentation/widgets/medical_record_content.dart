import 'package:flutter/material.dart';
import 'package:hospital_patient/core/presentation/widgets/scroll_extend_widget.dart';
import 'package:hospital_patient/core/style/paddings.dart';
import 'package:hospital_patient/core/style/text_styles.dart';
import 'package:hospital_patient/features/home/domain/entities/medical_record.dart';
import 'package:hospital_patient/features/home/presentation/widgets/info_label.dart';

class MedicalRecordContent extends StatelessWidget {
  const MedicalRecordContent({
    required this.medicalRecord,
    Key? key,
  }) : super(key: key);

  final MedicalRecord medicalRecord;

  @override
  Widget build(BuildContext context) {
    return ScrollExtendedWidget(
      child: Padding(
        padding: Paddings.horizontal24,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40.0),
            InfoLabel(
              title: 'Pregnancies number',
              info: medicalRecord.pregnancies,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Glucose',
              info: medicalRecord.glucose,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Blood pressure',
              info: medicalRecord.bloodPressure,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Skin thickness',
              info: medicalRecord.skinThickness,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Insulin',
              info: medicalRecord.insulin,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'BMI',
              info: medicalRecord.bmi,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Diabetes',
              info: medicalRecord.diabetes,
            ),
            const SizedBox(height: 16.0),
            InfoLabel(
              title: 'Age',
              info: medicalRecord.age,
            ),
            if (medicalRecord.filled) const SizedBox(height: 64.0),
            if (medicalRecord.filled)
              Row(
                children: [
                  Text('Outcome: ', style: roboto.s18.blueColor),
                  Text((medicalRecord.outcome ?? false).toString(), style: roboto.s18.w700.blueColor),
                ],
              ),
            const SizedBox(height: 22.0),
          ],
        ),
      ),
    );
  }
}
