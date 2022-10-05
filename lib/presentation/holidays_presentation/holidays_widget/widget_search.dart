// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:plam_oasis_travel_mobile/main.dart';
import 'package:plam_oasis_travel_mobile/web_services/countries_services.dart/get_countries_details.dart';
import '../../public_widget/widget_buttom.dart';

class Widget_Search extends StatefulWidget {
  const Widget_Search({Key? key}) : super(key: key);

  @override
  State<Widget_Search> createState() => _Widget_SearchState();
}

class _Widget_SearchState extends State<Widget_Search> {
  var countries = [];

  Future getAllCountries() async {
    var baseUrl = "https://palmoasistravel.com/new/api/countries";

    http.Response response =
        await http.get(Uri.parse(baseUrl), headers: {"locale": lang});

    if (response.statusCode == 200) {
      var jsonData = json.decode(response.body);
      setState(() {
        countries = jsonData["data"];
      });
      print(countries);
    }
  }

  @override
  void initState() {
    super.initState();
    getAllCountries();
  }

  var dropdownvalue_en;
  var dropdownvalue2_en;

  bool visibile = false;

  var items = [
    'All Month',
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Column(children: [
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: DropdownButton(
              hint: Text('Choose Month'),
              value: dropdownvalue_en,
              borderRadius: BorderRadius.circular(10),
              elevation: 1,
              underline: Container(),
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items.map((String items) {
                return DropdownMenuItem(
                  value: items,
                  child: Text(items),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  dropdownvalue_en = newValue!;
                });
              },
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Container(
          height: 50,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: DropdownButton(
              value: dropdownvalue2_en,
              hint: Text('Choose Countries'),
              borderRadius: BorderRadius.circular(10),
              elevation: 1,
              underline: Container(),
              isExpanded: true,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: countries.map((item) {
                return DropdownMenuItem(
                  value: item['id'].toString(),
                  child: Text(item['name'].toString()),
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  dropdownvalue2_en = newValue!;
                  print(countries.lastIndexOf(newValue));
                });
              },
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Widget_Button(
          lable: 'Search',
          ontap: (() {
            setState(() {});
          }),
        ),
      ]),
    );
  }
}
