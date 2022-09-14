// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/presentaion/home_page_presentaion/home_page_widget/widget_text_intro.dart';
import '../../../main.dart';
import '../../public_widget/widget_appbar.dart';
import '../../public_widget/widget_drawer.dart';
import '../home_page_widget/subscribe_to_our_newsletter.dart';
import '../home_page_widget/widget_home_countries.dart';
import '../home_page_widget/widget_partners_list.dart';
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
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Widget_Slider_list(),
              Widget_Text_Intro(),
              Divider_between_section(
                  name: lang == 'ar' ? "خدماتنـا" : "Our Services"),
              Widget_Services_List(),
              Divider_between_section(
                  name: lang == 'ar' ? "ابدأ رحلتـك" : "Start your journey"),
              Widget_Countries_List(),
              Divider_between_section(
                  name: lang == 'ar' ? "شركائنـا" : "Our Partners"),
              Widget_Partners_List(),
              Divider_between_section(
                  name: lang == 'ar'
                      ? "اشترك في نشرتنا الاخبارية"
                      : "Subscribe to our newsletter"),
              Subscribe_To_Our_Newsletter(),
            ],
          ),
        ));
  }
}
