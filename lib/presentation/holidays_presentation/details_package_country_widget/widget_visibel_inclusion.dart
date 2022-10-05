import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../models/holidays_models/countries_packages_details_model.dart';

class Widget_visibel_Inclusion extends StatelessWidget {
  final bool visibel;
  final String qoustion1;
  final String qoustion2;
  final int countq1;
  final int countq2;
  final List<Inclusions> inclusions;
  final List<Exclusions> exclusions;

  const Widget_visibel_Inclusion(
      {Key? key,
      required this.visibel,
      required this.qoustion1,
      required this.qoustion2,
      required this.countq1,
      required this.countq2,
      required this.inclusions,
      required this.exclusions})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Visibility(
        visible: visibel,
        child: Padding(
          padding: const EdgeInsets.only(right: 16, left: 16),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    qoustion1,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: countq1,
                  itemBuilder: (context, item) {
                    return Row(
                      children: [
                        Icon(
                          Icons.done,
                          color: Colors.green,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        AutoSizeText(
                            overflow: TextOverflow.ellipsis,
                            inclusions[item].value.toString())
                      ],
                    );
                  }),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Text(
                    qoustion2,
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.grey,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: countq2,
                  itemBuilder: (context, item) {
                    return Row(
                      children: [
                        Icon(
                          Icons.cancel_outlined,
                          color: Colors.red,
                        ),
                        SizedBox(
                          width: 4,
                        ),
                        Expanded(
                          child: Text(
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: false,
                              exclusions[item].value.toString()),
                        )
                      ],
                    );
                  }),
            ],
          ),
        ));
  }
}
