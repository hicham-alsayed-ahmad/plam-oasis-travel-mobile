// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/models/home_page_models/countries_model.dart';
import 'package:plam_oasis_travel_mobile/web_services/home_page_services/get_countries_list.dart';

class Widget_Countries_List extends StatefulWidget {
  const Widget_Countries_List({Key? key}) : super(key: key);

  @override
  _Widget_Countries_ListState createState() => _Widget_Countries_ListState();
}

class _Widget_Countries_ListState extends State<Widget_Countries_List> {
  late Future<Countries_Home?> apiCall;
  @override
  void initState() {
    super.initState();
    apiCall = getAllCouyntries();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<Countries_Home?>(
          future: apiCall,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: CarouselSlider.builder(
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return Column(children: [
                        ClipRRect(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(10),
                                topRight: Radius.circular(10)),
                            child: Image.asset('assets/images/countries.jpg')
                            // Container(
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: getimagecountries(snapshot
                            //               .data!.data![itemIndex].image
                            //               .toString()),
                            //           fit: BoxFit.fill)),
                            //   width: MediaQuery.of(context).size.width,
                            // ),
                            ),
                        Container(
                          color: Colors.white.withOpacity(1.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      primary: Colors.amber[400]),
                                  onPressed: (() {}),
                                  child: Text('View details')),
                              Column(
                                children: [
                                  Text(
                                    'Prices Start From  ',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        color: Colors.grey),
                                  ),
                                  Row(
                                    children: [
                                      Text(snapshot
                                          .data!.data![itemIndex].startPrice
                                          .toString()),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        'dirhams  ',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        )
                      ]);
                    },
                    options: CarouselOptions(
                      height: 280,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.8,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 4),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ),
                  ),
                )
              ]);
            } else if (snapshot.hasError) {
              return Text('${snapshot.error}');
            }
            return Center(
                child: Container(
              height: MediaQuery.of(context).size.height / 50,
              width: MediaQuery.of(context).size.width / 4,
            ));
          }),
    );
  }
}
