import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

class UiLoader extends StatelessWidget {
  final bool isLoading;
  final Widget child;
  final bool? simpleView;

  const UiLoader({
    required this.child,
    required this.isLoading,
    this.simpleView,
  });

  @override
  Widget build(BuildContext context) {
    return isLoading ? renderLoader() : child;
  }

  Widget renderLoader() {
    final loader = LoadingIndicator(
      indicatorType: Indicator.ballClipRotatePulse,
      colors: [AppTheme.colors.primary, AppTheme.colors.secondary],
      strokeWidth: 6,
    );

    if (simpleView ?? false) {
      return Padding(
        padding: EdgeInsets.only(top: 150.h),
        child: Container(
          height: 205.h,
          child: loader,
        ),
      );
    }

    return Container(
      height: Get.height,
      width: Get.width,
      color: AppTheme.colors.whiteDark,
      child: Center(
        child: Container(
          height: 205.h,
          child: loader,
        ),
      ),
    );
  }
}
