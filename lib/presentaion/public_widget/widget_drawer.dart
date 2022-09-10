// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Widget_Drawer extends StatefulWidget {
  const Widget_Drawer({Key? key}) : super(key: key);

  @override
  State<Widget_Drawer> createState() => _Widget_DrawerState();
}

class _Widget_DrawerState extends State<Widget_Drawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [],
        ),
      ),
    );
  }
}
