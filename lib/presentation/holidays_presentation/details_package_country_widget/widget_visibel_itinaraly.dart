// // ignore_for_file: camel_case_types

// import 'package:auto_size_text/auto_size_text.dart';
// import 'package:flutter/material.dart';
// import 'package:html/parser.dart';
// import '../../../constant/style.dart';
// import '../../../models/holidays_models/countries_packages_details_model.dart';

// class Widget_Visibel_Itinaraly extends StatefulWidget {
//   final bool visibel;
//   final List<Days> days;
//   final int cont_day;
//   final int count_tor;
//   final List<Tours> tours;

//   const Widget_Visibel_Itinaraly(
//       {Key? key,
//       required this.visibel,
//       required this.days,
//       required this.cont_day,
    
//       required this.count_tor})
//       : super(key: key);

//   @override
//   State<Widget_Visibel_Itinaraly> createState() =>
//       _Widget_Visibel_ItinaralyState();
// }

// class _Widget_Visibel_ItinaralyState extends State<Widget_Visibel_Itinaraly> {
//   @override
//   Widget build(BuildContext context) {
//     return Visibility(
//         visible: widget.visibel,
//         child: ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             itemCount: widget.cont_day,
//             itemBuilder: (context, day) {
//               return Column(
//                 children: [
//                   ListTile(
//                     leading: CircleAvatar(
//                       backgroundColor: Style.primaryColor,
//                       radius: 25,
//                       child: Text('day ' +
//                           widget.days
//                               .asMap()
//                               .keys
//                               .toList()
//                               .reduce((value, element) => 1 + day)
//                               .toString()),
//                     ),
//                     title: AutoSizeText(
//                       widget.days[day].dayTitle.toString(),
//                       style: TextStyle(
//                           fontWeight: FontWeight.bold,
//                           color: Style.primaryColor),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 5,
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.only(
//                         top: 8, bottom: 8, left: 16, right: 16),
//                     child: AutoSizeText(
//                       textAlign: TextAlign.start,
//                       parse(widget.days[day].dayDescription.toString())
//                           .body!
//                           .text
//                           .toString(),
//                     ),
//                   ),
//                   SizedBox(
//                     height: 10,
//                   ),
//                   widget.days[day].tours!.toList().isEmpty
//                       ? Text('')
//                       : Padding(
//                           padding: const EdgeInsets.only(left: 16, right: 16),
//                           child: Container(
//                               decoration: BoxDecoration(
//                                   color: Colors.amber[400],
//                                   borderRadius: BorderRadius.circular(8)),
//                               padding: EdgeInsets.all(8),
//                               child: InkWell(
//                                   onTap: () {
//                                     showDialog(
//                                         context: context,
//                                         builder: (context) {
//                                           return AlertDialog(
//                                             content: ListView.builder(
//                                                 itemCount: widget.count_tor,
//                                                 itemBuilder: (context, item) {
//                                                   return Column(
//                                                     children: [
//                                                       Text("Add Tour"),
//                                                     ],
//                                                   );
//                                                 }),
//                                           );
//                                         });
//                                   },
//                                   child: Text('Add tours'))),
//                         ),
//                   Padding(
//                     padding: const EdgeInsets.only(left: 16, right: 16),
//                     child: Divider(),
//                   )
//                 ],
//               );
//             }));
//   }
// }
