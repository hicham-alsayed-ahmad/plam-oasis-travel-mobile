// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../../main.dart';
import '../../models/holidays_models/countries_details_model.dart';
import '../public_services/api.dart';

Future<Caountries_Details?> getAllCouyntriesDetails(int id) async {
  var response = await http.get(Uri.parse(API.CountriesList + "/" + '$id'),
      headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;

    Caountries_Details res =
        Caountries_Details.fromJson(json.decode(jsonResponse));

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
