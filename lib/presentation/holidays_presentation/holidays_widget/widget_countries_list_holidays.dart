// ignore_for_file: camel_case_types, library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/models/holidays_models/countries_list_model.dart';
import '../../../web_services/countries_services.dart/get_countries_list.dart';
import '../holidays_screen/countries_details_screen.dart';

class Widget_Countries_List_Holidays extends StatefulWidget {
  const Widget_Countries_List_Holidays({Key? key}) : super(key: key);

  @override
  _Widget_Countries_List_HolidaysState createState() =>
      _Widget_Countries_List_HolidaysState();
}

class _Widget_Countries_List_HolidaysState
    extends State<Widget_Countries_List_Holidays> {
  late Future<CountriesList?> apiCall;
  @override
  void initState() {
    super.initState();
    apiCall = getAllCouyntriesHolidays();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: FutureBuilder<CountriesList?>(
          future: apiCall,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Padding(
                  padding: const EdgeInsets.only(
                    top: 24,
                  ),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    padding: EdgeInsets.all(16),
                    itemCount: snapshot.data!.data!.length,
                    itemBuilder: (
                      BuildContext context,
                      int itemIndex,
                    ) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(children: [
                          Container(
                            height: MediaQuery.of(context).size.height / 4,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(10),
                                    topRight: Radius.circular(10)),
                                image: DecorationImage(
                                    image: getimagecountries(snapshot
                                        .data!.data![itemIndex].image
                                        .toString()),
                                    fit: BoxFit.fill)),
                          ),
                          Container(
                            color: Colors.white.withOpacity(1.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: Colors.amber[400]),
                                    onPressed: (() {
                                      setState(() {
                                        Navigator.push(
                                            context,
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    Countries_Details_Screen(
                                                      id: snapshot.data!
                                                          .data![itemIndex].id!
                                                          .toInt(),
                                                    )));
                                      });

                                      // Navigator.of(context).pushNamed(
                                      //     '/coutriesdetalis',
                                      //     arguments: {
                                      //       'id': snapshot
                                      //           .data!.data![itemIndex].id
                                      //     });
                                    }),
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
                                          'AED  ',
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          )
                        ]),
                      );
                    },
                  ));
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
