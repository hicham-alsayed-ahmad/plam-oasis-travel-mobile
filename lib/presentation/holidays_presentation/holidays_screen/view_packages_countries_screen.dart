// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';
import '../../../models/holidays_models/countries_packages_details_model.dart';
import '../../../web_services/countries_services.dart/get_countries_packages_details.dart';
import '../details_package_country_widget/widget_cover_country_location_country.dart';
import '../details_package_country_widget/widget_visibel_flight.dart';
import '../details_package_country_widget/widget_visibel_inclusion.dart';
import '../details_package_country_widget/widget_visibel_itinaraly.dart';
import '../details_package_country_widget/widget_visible_overview.dart';
import '../holidays_widget/card_visibel.dart';

class View_Packages_Countries_Screen extends StatefulWidget {
  final int id_hotel;
  final int id_package;
  const View_Packages_Countries_Screen(
      {Key? key, required this.id_hotel, required this.id_package})
      : super(key: key);

  @override
  State<View_Packages_Countries_Screen> createState() =>
      _View_Packages_Countries_ScreenState();
}

class _View_Packages_Countries_ScreenState
    extends State<View_Packages_Countries_Screen> {
  bool visibel_overview = false;
  bool visibel_inclusion = false;
  bool visibel_hotel = false;
  bool visibel_flight = false;
  bool visibel_Itinaraly = false;
  bool visibel_Information_country = false;

  late Future<Countries_packages_details?> apiCall;

  @override
  void initState() {
    super.initState();
    apiCall = getDetailsPackgesCountries(widget.id_package, widget.id_hotel);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: FutureBuilder<Countries_packages_details?>(
              future: apiCall,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Column(
                    children: [
                      Widget_Cover_Country_Location_Country(
                        cover: NetworkImage(
                            snapshot.data!.data!.packageImageHeader.toString()),
                        map: NetworkImage(
                          snapshot.data!.data!.map.toString(),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Over View',
                        ontap: () {
                          setState(() {
                            visibel_overview = !visibel_overview;
                          });
                        },
                      ),
                      Widget_Visibel_Overview(
                        visible: visibel_overview,
                        description:
                            parse(snapshot.data!.data!.overview.toString())
                                .body!
                                .text
                                .toString(),
                        count: snapshot.data!.data!.sliders!.length,
                        images: snapshot.data!.data!.sliders!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Inclusion',
                        ontap: () {
                          setState(() {
                            visibel_inclusion = !visibel_inclusion;
                          });
                        },
                      ),
                      Widget_visibel_Inclusion(
                        visibel: visibel_inclusion,
                        countq1: snapshot.data!.data!.inclusions!.length,
                        countq2: snapshot.data!.data!.exclusions!.length,
                        qoustion1: 'What’s included ?',
                        qoustion2: 'What’s not included ?',
                        inclusions: snapshot.data!.data!.inclusions!,
                        exclusions: snapshot.data!.data!.exclusions!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Hotel',
                        ontap: () {
                          setState(() {
                            visibel_hotel = !visibel_hotel;
                          });
                        },
                      ),
                      Visibility(
                          visible: visibel_hotel,
                          child: Column(
                            children: [
                              SizedBox(
                                height: 20,
                              ),
                              Text('data not found')
                            ],
                          )),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Flight',
                        ontap: () {
                          setState(() {
                            visibel_flight = !visibel_flight;
                          });
                        },
                      ),
                      Widget_Visibel_Flight(
                        visibel: visibel_flight,
                        count_flight: snapshot.data!.data!.flights!.length,
                        count_transfer: snapshot.data!.data!.transfers!.length,
                        flight: snapshot.data!.data!.flights!,
                        transfers: snapshot.data!.data!.transfers!,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Itinaraly',
                        ontap: () {
                          setState(() {
                            visibel_Itinaraly = !visibel_Itinaraly;
                          });
                        },
                      ),
                      // Widget_Visibel_Itinaraly(
                      //   visibel: visibel_Itinaraly,
                      //   cont_day: snapshot.data!.data!.days!.length,
                      //   days: snapshot.data!.data!.days!,
                      //    tours: snapshot.data!.data!.days![1].tours,
                      //    count_tor:
                      // ),
                      const SizedBox(
                        height: 20,
                      ),
                      Card_visibel(
                        titel: 'Information Country',
                        ontap: () {
                          setState(() {
                            visibel_Information_country =
                                !visibel_Information_country;
                          });
                        },
                      ),
                    ],
                  );
                } else {
                  return Container();
                }
              })),
    );
  }
}
