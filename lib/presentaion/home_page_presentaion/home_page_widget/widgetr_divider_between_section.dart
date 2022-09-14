// ignore_for_file: avoid_unnecessary_containers
import 'package:flutter/material.dart';

import '../../../constant/style.dart';

// ignore: camel_case_types
class Divider_between_section extends StatelessWidget {
  final String name;
  const Divider_between_section({
    Key? key,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              child: const Divider(
                thickness: 1,
                endIndent: 10,
                indent: 35,
                color: Style.primaryColor,
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Style.primaryColor,
            ),
          ),
          Expanded(
            child: Container(
              child: const Divider(
                thickness: 1,
                endIndent: 35,
                indent: 10,
                color: Style.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
