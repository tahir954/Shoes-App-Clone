

import 'package:flutter/material.dart';
import 'package:shoes1/Constants/responsive.dart';

import '../../Constants/colors.dart';



class LoginCredentialFields extends StatelessWidget {
  final String hintText;
  bool obsText = false;
  final TextInputType keyboardType;

  LoginCredentialFields({
    super.key,
    required this.responsive,
    required this.hintText,
    required this.keyboardType,
    required this.obsText,
  });

  final Responsive responsive;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obsText,
      keyboardType: keyboardType,
      style: TextStyle(
        height: 1,
        fontSize: 17,
        fontWeight: FontWeight.normal,
      ),
      decoration: InputDecoration(
        fillColor: Colors.black12.withOpacity(0.05),
        filled: true,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(
            width: 0,
            color: Colors.black12.withOpacity(0.09),
          ),
        ),
        constraints: BoxConstraints(
          maxHeight: responsive.heightPercent(6),
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: lightTxtColor,
          fontSize: 17,
          fontWeight: FontWeight.normal,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
          borderSide: BorderSide(
            color: Colors.white60,
            style: BorderStyle.solid,
            width: 0,
          ),
        ),
      ),
    );
  }
}
