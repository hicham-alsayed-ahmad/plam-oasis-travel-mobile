// ignore_for_file: sized_box_for_whitespace, camel_case_types

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../models/home_page_models/services_model.dart';
import '../../../web_services/home_page_services/get_services_list.dart';

class Widget_Services_List extends StatefulWidget {
  const Widget_Services_List({Key? key}) : super(key: key);

  @override
  State<Widget_Services_List> createState() => _Widget_Services_ListState();
}

class _Widget_Services_ListState extends State<Widget_Services_List> {
  late Future<Services?> apiCall;

  @override
  void initState() {
    super.initState();
    apiCall = getAllServices();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Services?>(
        future: apiCall,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: MediaQuery.of(context).size.height / 3.5,
                  width: MediaQuery.of(context).size.width,
                  child: CarouselSlider.builder(
                      itemCount: snapshot.data!.data!.length,
                      itemBuilder: (BuildContext context, int itemIndex,
                          int pageViewIndex) {
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const CircleAvatar(
                              radius: 45,
                              backgroundColor: Color(0xff005d84),
                            ),
                            // Container(
                            //   decoration: BoxDecoration(
                            //       image: DecorationImage(
                            //           image: getimagecountries(snapshot
                            //               .data!.data![itemIndex].icon
                            //               .toString()),
                            //           fit: BoxFit.fill)),
                            //   width: MediaQuery.of(context).size.width,
                            // ),
                            const SizedBox(
                              height: 10,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                snapshot.data!.data![itemIndex].title
                                    .toString(),
                                style: const TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 15),
                              ),
                            ),
                            // Html(data: snapshot.data!.data![itemIndex].text)
                          ],
                        );
                      },
                      options: CarouselOptions(
                        height: 300,
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
                ));
          } else if (snapshot.hasError) {
            return Text('${snapshot.error}');
          }
          return Center(
              child: Container(
            height: MediaQuery.of(context).size.height / 50,
            width: MediaQuery.of(context).size.width / 4,
          ));
        });
  }
}
