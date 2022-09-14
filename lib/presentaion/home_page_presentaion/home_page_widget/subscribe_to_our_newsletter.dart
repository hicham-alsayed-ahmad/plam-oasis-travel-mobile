// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/presentaion/public_widget/widget_text_form.dart';

class Subscribe_To_Our_Newsletter extends StatefulWidget {
  const Subscribe_To_Our_Newsletter({Key? key}) : super(key: key);

  @override
  State<Subscribe_To_Our_Newsletter> createState() =>
      _Subscribe_To_Our_NewsletterState();
}

class _Subscribe_To_Our_NewsletterState
    extends State<Subscribe_To_Our_Newsletter> {
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          InputText(
              hint: 'Full Name',
              label: 'Name',
              icon: Icon(Icons.person),
              ontap: () {},
              controller: name),
          SizedBox(
            height: 15,
          ),
          InputText(
              hint: 'Your Email',
              label: 'Email',
              icon: Icon(Icons.email),
              ontap: () {},
              controller: email)
        ],
      ),
    );
  }
}
