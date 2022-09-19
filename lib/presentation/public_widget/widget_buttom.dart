// ignore_for_file: camel_case_types, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';

class Widget_Button extends StatelessWidget {
  final String lable;
  final Function() ontap;
  const Widget_Button({
    Key? key,
    required this.lable,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(
        lable,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Style.primaryColor),
      ),
      onPressed: ontap,
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          )),
          backgroundColor: MaterialStateProperty.all(Colors.amber[400]),
          padding: MaterialStateProperty.all(const EdgeInsets.all(12)),
          textStyle: MaterialStateProperty.all(const TextStyle(fontSize: 16))),
    );
  }
}
