// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/models/holidays_models/countries_list_model.dart';
import '../../main.dart';
import '../public_services/api.dart';

Future<CountriesList?> getAllCouyntriesHolidays() async {
  var response =
      await http.get(Uri.parse(API.CountriesList), headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;

    CountriesList res = CountriesList.fromJson(json.decode(jsonResponse));

    return res;
  }
}

String frommater(String url) {
  return url;
}

NetworkImage getimagecountries(String name) {
// ignore: unnecessary_string_interpolations///
  final String url = frommater('$name');
  return NetworkImage(url);
}
