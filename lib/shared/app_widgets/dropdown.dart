// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cool_dropdown/cool_dropdown.dart';
import 'package:cool_dropdown/models/cool_dropdown_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klina/shared/app_extensions.dart';

import 'package:klina/theme/palette.dart';

class Dropdown extends StatefulWidget {
  final String title;
  final List<String> items;

  final dynamic Function(String) onChange;
  final double? width;
  final DropdownController controller;
  const Dropdown({
    Key? key,
    required this.title,
    required this.items,
    required this.onChange,
    this.width,
    required this.controller,
  }) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  List<CoolDropdownItem<String>> dropdownItems = [];

  @override
  void initState() {
    super.initState();
    for (var i = 0; i < widget.items.length; i++) {
      dropdownItems.add(
        CoolDropdownItem<String>(
          label: widget.items[i],
          value: widget.items[i],
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 66.h,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          widget.title.txt14(
            fontW: F.w5,
            color: grey700,
          ),
          CoolDropdown<String>(
            controller: widget.controller,
            dropdownList: dropdownItems,
            defaultItem: dropdownItems[0],
            onChange: widget.onChange,
            resultOptions: ResultOptions(
              width: 327.w,
              height: 40.h,
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              textStyle: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: grey500,
              ),
              openBoxDecoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: grey200,
                  )),
              boxDecoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(18.r),
                  border: Border.all(
                    color: grey200,
                  )),
              render: ResultRender.all,
              icon: SizedBox(
                width: 10.w,
                height: 10.h,
                child: const CustomPaint(
                  painter: DropdownArrowPainter(color: grey400),
                ),
              ),
            ),
            dropdownOptions: DropdownOptions(
              width: widget.width ?? 327.w,
            ),
            dropdownItemOptions: DropdownItemOptions(
              alignment: Alignment.center,
              render: DropdownItemRender.label,
              padding: const EdgeInsets.all(10),
              selectedPadding: const EdgeInsets.all(10),
              textStyle: TextStyle(
                color: primary300,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              selectedTextStyle: TextStyle(
                color: neutralWhite,
                fontSize: 14.sp,
                fontWeight: FontWeight.bold,
              ),
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              selectedBoxDecoration: const BoxDecoration(
                color: primary300,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
