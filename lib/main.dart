import 'package:devicelocale/devicelocale.dart';
import 'package:flutter/material.dart';
import 'presentaion/home_page_presentaion/home_page_screen/home_page.dart';

String lang = "ar";
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  String? locale = await Devicelocale.currentLocale;
  lang = locale!.split('-').first.toString();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plam oasis travel mobile',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const HomeApp(),
    );
  }
}
