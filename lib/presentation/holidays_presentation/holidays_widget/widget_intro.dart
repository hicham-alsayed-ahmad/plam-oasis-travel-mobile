// ignore_for_file: camel_case_types

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../models/general_information_model/general_information_model.dart';
import '../../../web_services/public_services/get_general_informaition.dart';

class Widget_Intro extends StatefulWidget {
  const Widget_Intro({Key? key}) : super(key: key);

  @override
  State<Widget_Intro> createState() => _Widget_IntroState();
}

class _Widget_IntroState extends State<Widget_Intro> {
  late Future<General_Information?> apiCall;

  @override
  void initState() {
    super.initState();
    apiCall = getAllInformation();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<General_Information?>(
        future: apiCall,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: EdgeInsets.all(8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 30,
                  ),
                  Text(
                    snapshot.data!.data!.introTitle.toString(),
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  ),
                ],
              ),
            );
          } else {
            return Container(
              height: MediaQuery.of(context).size.height / 30,
            );
          }
        });
  }
}
