import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';

class Card_visibel extends StatelessWidget {
  final String titel;
  final Function() ontap;
  const Card_visibel({
    Key? key,
    required this.titel,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: InkWell(
        onTap: ontap,
        child: Container(
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  offset: Offset(1, 1),
                  spreadRadius: 3)
            ], borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: MediaQuery.of(context).size.width,
            height: 40,
            child: Text(
              titel,
              style: TextStyle(
                  fontSize: 15,
                  color: Style.primaryColor,
                  fontWeight: FontWeight.bold),
            )),
      ),
    );
  }
}
