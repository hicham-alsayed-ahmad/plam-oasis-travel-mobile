import 'package:fab_circular_menu/fab_circular_menu.dart';
import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';

class ButtonContactUs extends StatefulWidget {
  const ButtonContactUs({Key? key}) : super(key: key);

  @override
  _ButtonContactUsState createState() => _ButtonContactUsState();
}

class _ButtonContactUsState extends State<ButtonContactUs> {
  @override
  Widget build(BuildContext context) {
    return FabCircularMenu(
        fabOpenColor: Style.primaryColor,
        fabCloseColor: Style.primaryColor,
        fabSize: 60,
        fabElevation: 5,
        fabOpenIcon: Icon(
          Icons.message,
          color: Colors.white,
        ),
        ringWidth: 55,
        ringDiameter: 300,
        ringColor: Colors.green.withOpacity(0.6),
        fabCloseIcon: Icon(
          Icons.close,
          color: Colors.white,
        ),
        // fabChild: Icon(Icons.add),
        children: <Widget>[
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/messenger.png'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/whatsapp.png'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/facebook.png'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/instagram.png'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/twitter.png'),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              width: 25,
              height: 25,
              child: Image.asset('assets/images/youtube.png'),
            ),
          ),
        ]);
  }
}
