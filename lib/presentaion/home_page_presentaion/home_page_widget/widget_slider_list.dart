// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/web_services/home_page_services/get_services_list.dart';
import '../../../models/home_page_models/sliders_model.dart';
import '../../../web_services/home_page_services/get_sliders_list.dart';

class Widget_Slider_list extends StatefulWidget {
  const Widget_Slider_list({Key? key}) : super(key: key);

  @override
  State<Widget_Slider_list> createState() => _Widget_Slider_listState();
}

class _Widget_Slider_listState extends State<Widget_Slider_list> {
  late Future<Sliders?> apiCall;

  @override
  void initState() {
    super.initState();
    apiCall = getAllBanners();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<Sliders?>(
        future: apiCall,
        builder: (BuildContext context, AsyncSnapshot<Sliders?> snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.of(context).size.height / 3.5,
              width: MediaQuery.of(context).size.width,
              child: CarouselSlider.builder(
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder:
                      (BuildContext context, int itemIndex, int pageViewIndex) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: getimage(snapshot
                                  .data!.data![itemIndex].image
                                  .toString()),
                              fit: BoxFit.fill)),
                      width: MediaQuery.of(context).size.width,
                    );
                  },
                  options: CarouselOptions(
                    height: 400,
                    aspectRatio: 16.0 / 9.0,
                    viewportFraction: 1,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: const Duration(seconds: 4),
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,
                  )),
            );
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
              child: Container(
            height: MediaQuery.of(context).size.height / 50,
            width: MediaQuery.of(context).size.width / 4,
          ));
        },
      ),
    );
  }
}
