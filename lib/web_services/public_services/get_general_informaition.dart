// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/main.dart';
import 'package:plam_oasis_travel_mobile/models/general_information_model/general_information_model.dart';
import 'api.dart';

Future<General_Information?> getAllInformation() async {
  var response = await http
      .get(Uri.parse(API.GeneralInformaitionAPI), headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;
    General_Information res =
        General_Information.fromJson(json.decode(jsonResponse));

    return res;
  }
}

String frommater(String url) {
  return url;
}

NetworkImage getimageInformation(String name) {
  final String url = frommater('$name');
  return NetworkImage(url);
}
