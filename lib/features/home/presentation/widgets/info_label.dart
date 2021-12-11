import 'package:flutter/material.dart';
import 'package:hospital_patient/core/style/text_styles.dart';

class InfoLabel extends StatelessWidget {
  const InfoLabel({
    required this.title,
    required this.info,
    Key? key,
  }) : super(key: key);

  final String title;
  final Object info;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('$title: ', style: roboto.s18.blueColor),
        Text(info.toString(), style: roboto.s18.w700.blueColor),
      ],
    );
  }
}
