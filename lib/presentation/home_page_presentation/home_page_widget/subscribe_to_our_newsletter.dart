// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:plam_oasis_travel_mobile/constant/style.dart';
import 'package:plam_oasis_travel_mobile/presentation/public_widget/widget_text_form.dart';
import 'package:plam_oasis_travel_mobile/web_services/home_page_services/add_news_letter.dart';
import '../../../main.dart';
import '../../public_widget/widget_buttom.dart';

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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AutoSizeText(
            textAlign: TextAlign.center,
            lang == 'ar'
                ? 'قم بتسجيل بريدك الالكتروني لتحصل على أحدث العروض الترويجية الخاصة بنا'
                : 'Register your email to receive our latest promotions',
            style: TextStyle(fontSize: 15, color: Colors.grey),
          ),
          SizedBox(
            height: 20,
          ),
          InputText(
              hint: lang == 'ar' ? 'الاسم بالكامل' : 'Full Name',
              label: lang == 'ar' ? 'الاسم' : 'Name',
              icon: Icon(Icons.person),
              ontap: () {},
              controller: name),
          SizedBox(
            height: 15,
          ),
          InputText(
              hint: lang == 'ar' ? ' الايميل الخاص بك' : 'Your Email',
              label: lang == 'ar' ? 'الايميل' : 'Email',
              icon: Icon(Icons.email),
              ontap: () {},
              controller: email),
          SizedBox(
            height: 15,
          ),
          Widget_Button(
            lable: lang == 'ar' ? 'تسجيل' : 'Registration',
            ontap: () {
              setState(() {
                if (name.text != '' &&
                    email.text != '' &&
                    email.text.contains('@') &&
                    email.text.contains('.')) {
                  adduser(name.text, email.text);
                  name.clear();
                  email.clear();
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      alignment: Alignment.center,
                      title: const Text("Successful"),
                      content: const Text("You have registerd with ass"),
                      actions: <Widget>[
                        TextButton(
                          onPressed: () {
                            Navigator.of(ctx).pop();
                          },
                          child: Container(
                            color: Style.primaryColor,
                            padding: const EdgeInsets.all(14),
                            child: const Text("okay"),
                          ),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                      context: context,
                      builder: (ctx) => AlertDialog(
                            alignment: Alignment.center,
                            title: const Text("Invalid Email"),
                            content: const Text("please enter a valid email"),
                            actions: <Widget>[
                              TextButton(
                                onPressed: () {
                                  Navigator.of(ctx).pop();
                                },
                                child: Container(
                                  color: Style.primaryColor,
                                  padding: const EdgeInsets.all(14),
                                  child: const Text("Retry"),
                                ),
                              ),
                            ],
                          ));
                }
              });
            },
          )
        ],
      ),
    );
  }
}
