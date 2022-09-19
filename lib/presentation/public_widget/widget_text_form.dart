import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final String hint;
  final String label;
  final Icon icon;
  final Function() ontap;
  final TextEditingController controller;
  const InputText({
    Key? key,
    required this.hint,
    required this.label,
    required this.icon,
    required this.ontap,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          enabledBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(10),
            ),
            borderSide: BorderSide(color: Colors.grey),
          ),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          constraints: const BoxConstraints(maxHeight: 50),
          suffixIcon: InkWell(onTap: ontap, child: icon)),
    );
  }
}
