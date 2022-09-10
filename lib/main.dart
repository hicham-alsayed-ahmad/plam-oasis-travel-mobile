import 'package:flutter/material.dart';

import 'presentaion/home_page_presentaion/home_page_screen/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plam oasis travel mobile',
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const HomeApp(),
    );
  }
}
