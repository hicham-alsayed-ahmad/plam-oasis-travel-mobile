// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:plam_oasis_travel_mobile/main.dart';
import '../../../constant/style.dart';

class Widget_Text_Intro extends StatefulWidget {
  const Widget_Text_Intro({Key? key}) : super(key: key);

  @override
  State<Widget_Text_Intro> createState() => _Widget_Text_IntroState();
}

class _Widget_Text_IntroState extends State<Widget_Text_Intro> {
  String intro_p2_ar =
      'نقدم مجموعة كاملة من الحلول اللوجستية للسفر داخل وخارج الإمارات العربية المتحدة ونركز دائمًا على تلبية احتياجات عملائنا والرصد المستمر لمستوى الخدمات والالتزامات في مجال السياحة';
  String intro_p2_en =
      'We offer a full range of logistics solutions for travel inside and outside the UAE\n We always focus on meeting the needs of our customers and constantly monitoring the level of services and commitments in the field of tourism';
  @override
  Widget build(BuildContext context) {
    return Column(
      // ignore: prefer_const_literals_to_create_immutables
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            lang == 'ar'
                ? 'الرائدون في تنظيم الرحلات السياحية'
                : 'Pioneering tour operators',
            style: Style.titleText,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 8.0, left: 8.0, bottom: 8.0),
          child: AutoSizeText(
            lang == 'ar' ? intro_p2_ar : intro_p2_en,
            style: Style.bodyText,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
