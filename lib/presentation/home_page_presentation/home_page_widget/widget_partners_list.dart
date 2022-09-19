// ignore_for_file: sized_box_for_whitespace, camel_case_types, prefer_const_constructors, sort_child_properties_last
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/models/home_page_models/partners_model.dart';
import 'package:plam_oasis_travel_mobile/web_services/home_page_services/get_partners_list.dart';

class Widget_Partners_List extends StatefulWidget {
  const Widget_Partners_List({Key? key}) : super(key: key);

  @override
  State<Widget_Partners_List> createState() => _Widget_Partners_ListState();
}

class _Widget_Partners_ListState extends State<Widget_Partners_List> {
  late Future<Partners?> apiCall;
  CarouselController carouselController = CarouselController();

  @override
  void initState() {
    super.initState();
    apiCall = getAllPartners();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Partners?>(
        future: apiCall,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Container(
              height: MediaQuery.of(context).size.height / 4,
              width: MediaQuery.of(context).size.width,
              child: Stack(children: [
                CarouselSlider.builder(
                    carouselController: carouselController,
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (BuildContext context, int itemIndex,
                        int pageViewIndex) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: getimagePartners(snapshot
                                        .data!.data![itemIndex].image
                                        .toString()),
                                    fit: BoxFit.fill)),
                            width: MediaQuery.of(context).size.width / 2,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              snapshot.data!.data![itemIndex].name.toString(),
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
                      autoPlay: false,
                      autoPlayInterval: const Duration(seconds: 4),
                      autoPlayAnimationDuration:
                          const Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    )),
                Positioned(
                    right: 20,
                    top: 50,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          carouselController.nextPage();
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(Icons.arrow_forward_ios),
                        radius: 20,
                      ),
                    )),
                Positioned(
                    left: 20,
                    top: 50,
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          carouselController.previousPage();
                        });
                      },
                      child: CircleAvatar(
                        backgroundColor: Colors.grey.withOpacity(0.2),
                        child: Icon(Icons.arrow_back_ios),
                        radius: 20,
                      ),
                    )),
              ]),
            );
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
