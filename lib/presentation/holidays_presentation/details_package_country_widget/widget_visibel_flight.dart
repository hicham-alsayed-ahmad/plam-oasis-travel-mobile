// ignore_for_file: camel_case_types, non_constant_identifier_names, prefer_const_constructors

import 'package:flutter/material.dart';
import '../../../constant/style.dart';
import '../../../models/holidays_models/countries_packages_details_model.dart';

class Widget_Visibel_Flight extends StatelessWidget {
  final bool visibel;
  final int count_flight;
  final int count_transfer;
  final List<Flights> flight;
  final List<Transfers> transfers;

  const Widget_Visibel_Flight(
      {Key? key,
      required this.visibel,
      required this.flight,
      required this.count_flight,
      required this.count_transfer,
      required this.transfers})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visibel,
        child: Column(
          children: [
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: count_flight,
                itemBuilder: (context, item) {
                  return Card(
                    margin:
                        EdgeInsets.only(right: 16, left: 16, top: 8, bottom: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Style.primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Destination',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(flight[item].departureFrom.toString()),
                                  Text(' - '),
                                  Text(flight[item].departureTo.toString()),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Style.primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Flight',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Container(
                                width: 25,
                                height: 25,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: NetworkImage(flight[item]
                                            .segments!
                                            .icon
                                            .toString()))),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Style.primaryColor,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Departure',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(flight[item]
                                      .segments!
                                      .departureFrom
                                      .toString()),
                                  Text(flight[item]
                                      .segments!
                                      .departureDate
                                      .toString())
                                ],
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Style.primaryColor,
                                child: Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text(
                                    'Arrival',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Text(flight[item]
                                      .segments!
                                      .arrivalTo
                                      .toString()),
                                  Text(flight[item]
                                      .segments!
                                      .arrivalDate
                                      .toString())
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
            const SizedBox(
              height: 16,
            ),
            const Text('Transfer'),
            ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: count_transfer,
                itemBuilder: (context, item) {
                  return Card(
                    margin: const EdgeInsets.only(
                        right: 16, left: 16, top: 8, bottom: 8),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.amber[400],
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Type'),
                                ),
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(transfers[item].type.toString()),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.amber[400],
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Pick - Up'),
                                ),
                              ),
                              Text(transfers[item].pickupLocation!.toString())
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.amber[400],
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Drop - Off'),
                                ),
                              ),
                              Text(transfers[item].dropOffLocation!.toString())
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Card(
                                color: Colors.amber[400],
                                child: const Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: Text('Date and Time'),
                                ),
                              ),
                              Text(transfers[item].date!.toString())
                            ],
                          ),
                        ],
                      ),
                    ),
                  );
                }),
          ],
        ));
  }
}
