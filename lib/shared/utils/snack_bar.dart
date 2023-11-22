// import 'package:file_picker/file_picker.dart';
// import 'package:connect/shared/nee_extensions.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:klina/shared/utils/type_defs.dart';
import 'package:flutter/material.dart';
import "package:klina/theme/palette.dart";
import 'package:another_flushbar/flushbar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

void showSnackBar({
  required BuildContext context,
  required String theMessage,
  required NotificationType theType,
}) {
  Flushbar(
    message: theMessage,
    messageSize: 15.sp,
    duration: const Duration(seconds: 4),
    flushbarPosition: FlushbarPosition.TOP,
    flushbarStyle: FlushbarStyle.FLOATING,
    margin: EdgeInsets.symmetric(horizontal: 10.w),
    borderRadius: BorderRadius.circular(7.r),
    reverseAnimationCurve: Curves.decelerate,
    forwardAnimationCurve: Curves.linearToEaseOut,
    messageColor: Colors.white,
    icon: Icon(
      theType == NotificationType.failure
          ? PhosphorIcons.warning(PhosphorIconsStyle.bold)
          : theType == NotificationType.success
              ? PhosphorIcons.checks(PhosphorIconsStyle.bold)
              : PhosphorIcons.warningCircle(PhosphorIconsStyle.bold),
      color: Colors.white,
    ),
    backgroundColor: theType == NotificationType.failure
        ? error400
        : theType == NotificationType.success
            ? success400
            : warning500,
  ).show(context);
}
