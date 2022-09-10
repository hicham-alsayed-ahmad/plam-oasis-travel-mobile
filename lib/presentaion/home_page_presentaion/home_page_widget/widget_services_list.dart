// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../../../models/home_page_models/services_model.dart';
import '../../../web_services/home_page_services/get_services_list.dart';

class Test extends StatefulWidget {
  const Test({Key? key}) : super(key: key);

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
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
              child: ListView.builder(
                  physics: const NeverScrollableScrollPhysics(),
                  primary: false,
                  shrinkWrap: true,
                  itemCount: snapshot.data!.data!.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Card(
                          color: Colors.white.withOpacity(0.9),
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundColor: const Color(0xff005d84),
                              //  Color(0xff2c4755),
                              child: Text(
                                snapshot.data!.data![index].id.toString(),
                                style: const TextStyle(color: Colors.white),
                              ),
                            ),
                            trailing:
                                const Icon(Icons.keyboard_double_arrow_right),
                            title: Text(
                              snapshot.data!.data![index].title.toString(),
                              style: const TextStyle(color: Color(0xff2c4755)),
                            ),
                          ),
                        ),
                      ],
                    );
                  }),
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
