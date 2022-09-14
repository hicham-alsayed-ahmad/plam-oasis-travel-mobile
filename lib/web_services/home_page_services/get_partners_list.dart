// ignore_for_file: body_might_complete_normally_nullable, prefer_interpolation_to_compose_strings, unnecessary_new, avoid_print, unnecessary_string_interpolations

import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:plam_oasis_travel_mobile/main.dart';
import 'package:plam_oasis_travel_mobile/models/home_page_models/partners_model.dart';
import '../api.dart';

Future<Partners?> getAllPartners() async {
  String fileName = "CacheData.json";
  var cacheDir = await getTemporaryDirectory();

  if (await File(cacheDir.path + "/" + fileName).exists()) {
    print("Loading from cache");
    //TOD0: Reading from the json File
    var jsonData = File(cacheDir.path + "/" + fileName).readAsStringSync();
    Partners response = Partners.fromJson(json.decode(jsonData));

    return response;
  } else {
    print(lang);
    print("Loading from API");

    var response = await http
        .get(Uri.parse(API.PartnersHomeAPI), headers: {"locale": lang});
    if (response.statusCode == 200) {
      var jsonResponse = response.body;
      Partners res = Partners.fromJson(json.decode(jsonResponse));

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

NetworkImage getimagePartners(String name) {
// ignore: unnecessary_string_interpolations///
  final String url = frommater('$name');
  return NetworkImage(url);
}
