import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ButtonMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final void Function() action;
  final Color? backgroundColor;

  ButtonMenu({
    required this.title,
    required this.icon,
    required this.action,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Container(
        width: 0.44.sw,
        height: 0.14.sh,
        decoration: BoxDecoration(
          color: backgroundColor ?? AppTheme.colors.primary,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: EdgeInsets.only(left: 20.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Icon(
                    icon,
                    color: AppTheme.colors.white,
                    size: 30,
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h),
                child: Row(
                  children: [
                    Text(
                      title,
                      style: AppTheme.textStyles.posLabel.copyWith(
                        color: AppTheme.colors.white,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
