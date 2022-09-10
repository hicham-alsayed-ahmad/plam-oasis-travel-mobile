// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';
import '../../public_widget/widget_appbar.dart';
import '../../public_widget/widget_drawer.dart';
import '../home_page_widget/widgetr_divider_between_section.dart';
import '../home_page_widget/widget_services_list.dart';
import '../home_page_widget/widget_slider_list.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Widget_Appbar(),
        drawer: const Widget_Drawer(),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Widget_Slider_list(),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  'الرائدون في تنطيم الرحلات السياحية',
                  style: Style.titleText,
                ),
              ),
              Text('نقدم مجموعة كاملة من الحلول اللوجستية',
                  style: Style.bodyText),
              Text('للسفر داخل وخارج الإمارات العربية المتحدة',
                  style: Style.bodyText),
              const Divider_between_section(name: "Our Services"),
              const Test()
            ],
          ),
        ));
  }
}
