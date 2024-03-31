import 'dart:ui';
import 'package:flutter/material.dart';
import '../../../common/theme.dart';


class CommonTextFieldSecondary extends StatelessWidget {
  CommonTextFieldSecondary({
    super.key,
    required this.heading,
    this.headingStyle,
    required this.controller,
    required this.hintText,
    this.isObscure,
  });

  TextStyle? headingStyle;
  TextEditingController controller;
  String hintText, heading;
  bool? isObscure;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(heading, style: headingStyle ?? tsBodyMedium.copyWith(
              fontWeight: FontWeight.w600
          ),),

          const SizedBox(height: 10,),

          TextField(
            controller: controller,
            obscureText: isObscure ?? false,
            style: tsBodySmall,
            decoration: InputDecoration(
              hintText: hintText,
              hintStyle: tsBodySmall.copyWith(color: Colors.grey[400]),
              filled: true,
              fillColor: const Color(0xFF707070).withOpacity(0.05),
              prefix: const SizedBox(width: 15,),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide.none,
              ),

              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: const BorderSide(
                  color: primaryColor,
                ),
              ),


            ),
          )
        ],
      ),
    );
  }
}