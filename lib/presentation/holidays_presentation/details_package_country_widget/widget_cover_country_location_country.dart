// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Widget_Cover_Country_Location_Country extends StatelessWidget {
  final ImageProvider cover;
  final ImageProvider map;
  const Widget_Cover_Country_Location_Country(
      {Key? key, required this.cover, required this.map})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
            height: MediaQuery.of(context).size.height / 5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: DecorationImage(image: cover))),
        const Text(
          'Destination on the map',
          style: TextStyle(
              fontSize: 15, color: Colors.grey, fontWeight: FontWeight.bold),
        ),
        Container(
            height: 200,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(image: DecorationImage(image: map))),
      ],
    );
  }
}
