// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class AppDivider extends StatelessWidget {
  final double? width;
  final EdgeInsetsGeometry? margin;
  const AppDivider({
    Key? key,
    this.width,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? 327,
      margin: margin,
      decoration: const ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFEFEFEF),
          ),
        ),
      ),
    );
  }
}
