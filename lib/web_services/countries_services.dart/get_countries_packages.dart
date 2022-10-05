// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'package:http/http.dart' as http;
import '../../main.dart';
import '../../models/holidays_models/countries_packages_model.dart';

Future<Packages_Countries?> getAllCouyntriesPackages(int id) async {
  var response = await http.get(
      Uri.parse(
          'https://palmoasistravel.com/new/api/packages?country_id=$id&month&type&offer'),
      headers: {"locale": lang});
  if (response.statusCode == 200) {
    var jsonResponse = response.body;

    Packages_Countries res =
        Packages_Countries.fromJson(json.decode(jsonResponse));

    return res;
  }
}
