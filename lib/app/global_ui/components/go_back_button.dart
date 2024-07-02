import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class GoBackButton extends StatelessWidget {
  final AssetImage? imageIcon;
  final Color? color;
  final String? text;
  final void Function()? action;
  final double? paddingVertical;
  final double? paddingHorizontal;

  const GoBackButton({
    this.text,
    this.color,
    this.action,
    this.imageIcon,
    this.paddingVertical,
    this.paddingHorizontal,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action ?? () => Get.back,
      child: Padding(
        padding: EdgeInsets.only(left: 20.w, top: 20.h),
        child: Row(
          children: [
            Icon(
              Icons.arrow_circle_left,
              color: color ?? AppTheme.colors.white,
              size: 40.sp,
            ),
          ],
        ),
      ),
    );
  }
}
