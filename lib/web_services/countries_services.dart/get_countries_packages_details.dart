// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../main.dart';
import '../../models/holidays_models/countries_packages_details_model.dart';

Future<Countries_packages_details?> getDetailsPackgesCountries(
    int id_packages, int id_hotel) async {
  var response = await http.get(
      Uri.parse(
          'https://palmoasistravel.com/new/api/packages/view?package_id=$id_packages&hotel_id=$id_hotel'),
      headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;

    Countries_packages_details res =
        Countries_packages_details.fromJson(json.decode(jsonResponse));

    return res;
  }
}
