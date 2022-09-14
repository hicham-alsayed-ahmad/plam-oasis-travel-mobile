// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:plam_oasis_travel_mobile/models/home_page_models/countries_model.dart';
import '../../main.dart';
import '../api.dart';

Future<Countries_Home?> getAllCouyntries() async {
  String fileName = "CacheData.json";
  var cacheDir = await getTemporaryDirectory();

  if (await File(cacheDir.path + "/" + fileName).exists()) {
    print("Loading from cache");
    //TOD0: Reading from the json File
    var jsonData = File(cacheDir.path + "/" + fileName).readAsStringSync();
    Countries_Home response = Countries_Home.fromJson(json.decode(jsonData));

    return response;
  } else {
    print("Loading from API");
    var response = await http
        .get(Uri.parse(API.CountriesHomeAPI), headers: {"locale": lang});
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      Countries_Home res = Countries_Home.fromJson(json.decode(jsonResponse));

      var tempDir = await getTemporaryDirectory();
      File file = new File(tempDir.path + "/" + fileName);
      file.writeAsString(jsonResponse, flush: true, mode: FileMode.write);

      return res;
    }
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