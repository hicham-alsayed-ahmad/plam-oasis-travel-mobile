// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:html/parser.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';
import 'package:plam_oasis_travel_mobile/web_services/countries_services.dart/get_countries_details.dart';
import 'package:plam_oasis_travel_mobile/web_services/countries_services.dart/get_countries_packages.dart';
import '../../../models/holidays_models/countries_details_model.dart';
import '../../../models/holidays_models/countries_packages_model.dart';
import '../../public_widget/single_star.dart';
import '../holidays_widget/widget_included_packages.dart';
import 'view_packages_countries_screen.dart';

class Countries_Details_Screen extends StatefulWidget {
  Countries_Details_Screen({Key? key, required this.id}) : super(key: key);
  final int id;

  @override
  State<Countries_Details_Screen> createState() =>
      _Countries_Details_ScreenState();
}

class _Countries_Details_ScreenState extends State<Countries_Details_Screen> {
  late Future<Caountries_Details?> apiCall;
  late Future<Packages_Countries?> packages;
  @override
  void initState() {
    super.initState();
    apiCall = getAllCouyntriesDetails(widget.id);
    packages = getAllCouyntriesPackages(widget.id);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          FutureBuilder<Caountries_Details?>(
              future: apiCall,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Container(
                    child: Column(
                      children: [
                        Container(
                            height: MediaQuery.of(context).size.height / 5,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(snapshot
                                      .data!.data!.headerImage
                                      .toString())),
                            )),
                        Text(
                          snapshot.data!.data!.name.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        AutoSizeText(
                          textAlign: TextAlign.center,
                          parse(snapshot.data!.data!.intro.toString())
                              .body!
                              .text
                              .toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.grey,
                              fontSize: 15),
                        ),
                      ],
                    ),
                  );
                } else {
                  return Container(
                    height: MediaQuery.of(context).size.height / 5,
                  );
                }
              }),
          FutureBuilder<Packages_Countries?>(
              future: packages,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return ListView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: snapshot.data!.data!.length,
                      itemBuilder: (context, item) {
                        return Padding(
                          padding: const EdgeInsets.only(
                              right: 16.0, left: 16, top: 8),
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            child: Column(
                              children: [
                                Stack(children: [
                                  Container(
                                      height:
                                          MediaQuery.of(context).size.height /
                                              3,
                                      width: MediaQuery.of(context).size.width,
                                      decoration: BoxDecoration(
                                        borderRadius: const BorderRadius.only(
                                            topLeft: Radius.circular(10),
                                            topRight: Radius.circular(10)),
                                        image: DecorationImage(
                                            image: NetworkImage(snapshot
                                                .data!.data![item].image
                                                .toString())),
                                      )),
                                  snapshot.data!.data![item].labels!.length != 0
                                      ? Positioned(
                                          top: 25,
                                          left: 0,
                                          child: Container(
                                            width: 100,
                                            child: ListView.builder(
                                                shrinkWrap: true,
                                                physics:
                                                    NeverScrollableScrollPhysics(),
                                                itemCount: snapshot.data!
                                                    .data![item].labels!.length,
                                                itemBuilder: (context, lable) {
                                                  return Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 5.0),
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                          color: Color(int.parse(
                                                              snapshot
                                                                  .data!
                                                                  .data![item]
                                                                  .labels![
                                                                      lable]
                                                                  .color
                                                                  .toString()
                                                                  .replaceFirst(
                                                                      '#',
                                                                      'ff'),
                                                              radix: 16))),
                                                      child: Text(snapshot
                                                          .data!
                                                          .data![item]
                                                          .labels![lable]
                                                          .value
                                                          .toString()),
                                                    ),
                                                  );
                                                }),
                                          ))
                                      : Text('')
                                ]),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    children: [
                                      Text(
                                        snapshot.data!.data![item].name
                                            .toString(),
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.grey,
                                            fontSize: 18),
                                      ),
                                      Spacer(),
                                      Icon(
                                        Icons.favorite,
                                        size: 30,
                                        color: Colors.red,
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: Row(
                                    // ignore: prefer_const_literals_to_create_immutables
                                    children: [
                                      Text(
                                        'Inclusions',
                                        style: TextStyle(
                                            color: Colors.orange, fontSize: 20),
                                      ),
                                    ],
                                  ),
                                ),
                                Widget_Included_Packages(),
                                Divider(
                                  color: Colors.grey,
                                ),
                                GridView.builder(
                                  shrinkWrap: true,
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: snapshot
                                      .data!.data![item].packageHotels!.length,
                                  itemBuilder: (context, hotel) {
                                    return InkWell(
                                      onTap: () {
                                        setState(() {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      View_Packages_Countries_Screen(
                                                          id_hotel: snapshot
                                                              .data!
                                                              .data![item]
                                                              .packageHotels![
                                                                  hotel]
                                                              .hotelId!
                                                              .toInt(),
                                                          id_package: snapshot
                                                              .data!
                                                              .data![item]
                                                              .id!
                                                              .toInt())));
                                        });
                                      },
                                      child: Card(
                                        elevation: 2,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(10.0),
                                        ),
                                        color: Style.primaryColor,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          children: [
                                            // Text(snapshot
                                            //     .data!
                                            //     .data![item]
                                            //     .packageHotels![hotel]
                                            //     .starRate
                                            //     .toString()),
                                            Container(
                                              alignment: Alignment.center,
                                              width: 100,
                                              child: GridView.builder(
                                                  gridDelegate:
                                                      SliverGridDelegateWithFixedCrossAxisCount(
                                                    crossAxisCount: 5,
                                                  ),
                                                  shrinkWrap: true,
                                                  scrollDirection:
                                                      Axis.vertical,
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  itemCount: snapshot
                                                      .data!
                                                      .data![item]
                                                      .packageHotels![hotel]
                                                      .starRate,
                                                  itemBuilder: (context, item) {
                                                    return SingleStar();
                                                  }),
                                            ),
                                            Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  snapshot
                                                      .data!
                                                      .data![item]
                                                      .packageHotels![hotel]
                                                      .price
                                                      .toString(),
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 25),
                                                ),
                                                SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'AED',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontWeight:
                                                          FontWeight.bold,
                                                      fontSize: 15),
                                                ),
                                              ],
                                            ),
                                            Text(
                                              'View details',
                                              style: TextStyle(
                                                  color: Colors.amber[400],
                                                  fontSize: 15),
                                            )
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                          childAspectRatio: 1.5),
                                )
                              ],
                            ),
                          ),
                        );
                      });
                } else {
                  return Container(
                    height: MediaQuery.of(context).size.height / 5,
                  );
                }
              }),
        ],
      ),
    ));
  }
}
