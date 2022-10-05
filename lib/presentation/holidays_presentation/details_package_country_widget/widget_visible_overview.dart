// ignore_for_file: camel_case_types

import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../models/holidays_models/countries_packages_details_model.dart';

class Widget_Visibel_Overview extends StatelessWidget {
  final bool visible;
  final String description;
  final int count;
  final List<Sliders> images;

  const Widget_Visibel_Overview({
    Key? key,
    required this.visible,
    required this.description,
    required this.count,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: visible,
      child: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0, left: 16.0),
            child: AutoSizeText(textAlign: TextAlign.start, description),
          ),
          const SizedBox(
            height: 20,
          ),
          CarouselSlider.builder(
              itemCount: count,
              itemBuilder:
                  (BuildContext context, int itemIndex, int pageViewIndex) {
                return Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image:
                              NetworkImage(images[itemIndex].image.toString()),
                          fit: BoxFit.fill)),
                  width: MediaQuery.of(context).size.width,
                );
              },
              options: CarouselOptions(
                height: 200,
                aspectRatio: 16.0 / 9.0,
                viewportFraction: 0.8,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: const Duration(seconds: 4),
                autoPlayAnimationDuration: const Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
              )),
        ],
      ),
    );
  }
}
