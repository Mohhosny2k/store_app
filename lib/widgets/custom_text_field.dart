import 'package:flutter/material.dart';

class CustomTextFormFeild extends StatelessWidget {
  CustomTextFormFeild(
      {this.hientText, this.onChanged, this.obscuretxxt = false,this.inputType ,super.key});
  String? hientText;
  Function(String)? onChanged;
  bool? obscuretxxt;
  TextInputType? inputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscuretxxt!,
      // validator: (value) {
      //   if (value!.isEmpty) {
      //     return 'field is required';
      //   }
      // },
      keyboardType: inputType,
      onChanged: onChanged,
      decoration: InputDecoration(
        hintText: hientText,
        //hintStyle: TextStyle(color: Colors.white),
        enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(), borderRadius: BorderRadius.circular(8)),
        border: OutlineInputBorder(
          borderSide: BorderSide(),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    );
  }
}
