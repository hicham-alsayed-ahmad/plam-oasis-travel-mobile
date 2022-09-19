// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/models/general_information_model/general_information_model.dart';
import 'package:plam_oasis_travel_mobile/web_services/public_services/get_general_informaition.dart';
import '../../../constant/style.dart';
import '../../../main.dart';

class Widget_Footer extends StatefulWidget {
  const Widget_Footer({Key? key}) : super(key: key);

  @override
  State<Widget_Footer> createState() => _Widget_FooterState();
}

class _Widget_FooterState extends State<Widget_Footer> {
  late Future<General_Information?> apiCall;

  @override
  void initState() {
    super.initState();
    apiCall = getAllInformation();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<General_Information?>(
        future: apiCall,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                color: Style.primaryColor,
                height: 200,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      snapshot.data!.data!.siteName.toString(),
                      style: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      snapshot.data!.data!.introTitle.toString(),
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.email,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          snapshot.data!.data!.email.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.phone,
                          color: Colors.white,
                          size: 20,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          snapshot.data!.data!.phone.toString(),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                    Container(
                      width: 100,
                      child: Divider(color: Colors.white),
                    ),
                    Text(
                      lang == 'ar' ? "نحن نقبل" : "We Accept",
                      style: TextStyle(color: Colors.white),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data!.data!.masterCardImg.toString(),
                            ),
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data!.data!.visaImg.toString(),
                            ),
                          )),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: NetworkImage(
                              snapshot.data!.data!.iataLogo.toString(),
                            ),
                          )),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Center(
                child: Container(
              height: MediaQuery.of(context).size.height / 50,
              width: MediaQuery.of(context).size.width / 4,
            ));
          }
        });
  }
}
