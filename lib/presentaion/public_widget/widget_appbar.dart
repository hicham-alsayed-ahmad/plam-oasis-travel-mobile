import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';

class Widget_Appbar extends StatelessWidget implements PreferredSizeWidget {
  const Widget_Appbar({
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => Size.fromHeight(55);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Style.primaryColor,
      ),
      leading: IconButton(
        icon: Icon(Icons.blur_on, size: 30),
        onPressed: () {
          Scaffold.of(context).openDrawer();
        },
      ),
      actions: [
        Icon(Icons.shopping_bag),
      ],
      centerTitle: true,
      backgroundColor: Colors.white,
      elevation: 1,
      title: Container(
        height: 50,
        child: Image.asset('assets/images/logo.png'),
      ),
    );
  }
}
