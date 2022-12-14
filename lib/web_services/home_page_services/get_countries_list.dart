// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/models/home_page_models/countries_model.dart';
import '../../main.dart';
import '../public_services/api.dart';

Future<Countries_Home?> getAllCouyntries() async {
  var response = await http
      .get(Uri.parse(API.CountriesHomeAPI), headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;
    Countries_Home res = Countries_Home.fromJson(json.decode(jsonResponse));

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
