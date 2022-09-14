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
          filled: true,
          fillColor: const Color(0xFFF6F7FF),
          hintText: hint,
          labelText: label,
          enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              borderSide: BorderSide(color: Color(0xFFF6F7FF), width: 2.0)),
          focusedBorder: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(10)),
            borderSide: BorderSide(color: Color(0xff005d84), width: 2.0),
          ),
          constraints: const BoxConstraints(maxHeight: 50),
          suffixIcon: InkWell(onTap: ontap, child: icon)),
    );
  }
}
