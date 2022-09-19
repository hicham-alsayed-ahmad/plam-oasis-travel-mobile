// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/main.dart';
import 'package:plam_oasis_travel_mobile/web_services/public_services/api.dart';

import '../../models/home_page_models/sliders_model.dart';

Future<Sliders?> getAllBanners() async {
  var response =
      await http.get(Uri.parse(API.SlidersHomeAPI), headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;
    Sliders res = Sliders.fromJson(json.decode(jsonResponse));

    return res;
  }
}

String frommater(String url) {
  return url;
}

NetworkImage getIcons(String name) {
// ignore: unnecessary_string_interpolations///
  final String url = frommater('$name');
  return NetworkImage(url);
}
