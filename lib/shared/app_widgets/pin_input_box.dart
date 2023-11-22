// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';

import "package:klina/theme/palette.dart";

class PinInputBox extends StatelessWidget {
  final void Function(String)? onCompleted;
  final void Function(String)? onChanged;
  final TextEditingController? controller;
  final int? length;
  const PinInputBox({
    Key? key,
    this.onCompleted,
    this.onChanged,
    this.controller,
    this.length,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Pinput(
      onChanged: onChanged,
      length: length ?? 4,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // obscuringCharacter: '*',
      obscureText: false,
      useNativeKeyboard: true,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      autofocus: true,
      defaultPinTheme: PinTheme(
        width: 64.h,
        height: 64.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: neutralBlack,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: const Color(0xFFCBD2E0)),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
      focusedPinTheme: PinTheme(
        width: 64.h,
        height: 64.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: neutralBlack,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: neutralBlack),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
      submittedPinTheme: PinTheme(
        width: 64.h,
        height: 64.h,
        textStyle: TextStyle(
          fontSize: 22.sp,
          color: neutralBlack,
          fontWeight: FontWeight.w700,
        ),
        decoration: BoxDecoration(
          border: Border.all(color: neutralBlack),
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6.r),
        ),
      ),
      controller: controller,
      onCompleted: onCompleted,
    );
  }
}
