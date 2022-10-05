// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/presentation/holidays_presentation/holidays_screen/holidays_screen.dart';
import '../home_page_presentation/home_page_screen/home_page.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => HomeApp(),
        );

      case '/holidays':
        return MaterialPageRoute(
            builder: (_) => HolidaysScreen(),
            settings: RouteSettings(arguments: settings.arguments));

      default:
        return MaterialPageRoute(
          builder: (_) => HomeApp(),
        );
    }
  }
}
