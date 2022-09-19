// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/cupertino.dart';
import 'package:plam_oasis_travel_mobile/main.dart';
import '../../../constant/style.dart';

class Widget_Text_Intro extends StatefulWidget {
  const Widget_Text_Intro({Key? key}) : super(key: key);

  @override
  State<Widget_Text_Intro> createState() => _Widget_Text_IntroState();
}

class _Widget_Text_IntroState extends State<Widget_Text_Intro> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lang == 'ar'
                ? 'الرائدون في تنظيم الرحلات السياحية'
                : 'Your Leading Holiday Maker',
            style: Style.titleText,
          ),
        ),
      ],
    );
  }
}
