import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShareButton extends StatelessWidget {
  final void Function()? action;

  const ShareButton({
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.only(top: 15.h, bottom: 35.h),
        child: InkWell(
          onTap: action,
          child: Container(
            height: .055.sh,
            width: .85.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100.r),
              color: AppTheme.colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.only(left: 25.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Compartilhar edital',
                    style: AppTheme.textStyles.posLabel.copyWith(
                      color: AppTheme.colors.primaryDark,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  ImageIcon(
                    AssetImage('assets/icons/arrowRight.png'),
                    color: AppTheme.colors.primaryDark,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
