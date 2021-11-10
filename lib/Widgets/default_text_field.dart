import 'package:flutter/material.dart';

Widget defaultTextFailed({
  TextInputType? type,
  String? label,
  IconData? prefix,
  bool isPassword = false,
  IconData? suffix,
  Function()? suffixpressed,
  String? validatemsg,
  required TextEditingController? controller,
}) =>
    TextFormField(
      keyboardType: type,
      obscureText: isPassword,
      controller: controller,
      // validator: (value) {
      //   validate(value);
      // },
      validator: (value) {
        if (value!.isEmpty) {
          return validatemsg;
        }
        return null;
      },
      decoration: InputDecoration(
        hintText: label,
        prefixIcon: Icon(
          prefix,
          color: Colors.black,
        ),
        suffixIcon: suffix != null
            ? IconButton(
                onPressed: suffixpressed,
                icon: Icon(
                  suffix,
                ),
              )
            : null,
      ),
    );
