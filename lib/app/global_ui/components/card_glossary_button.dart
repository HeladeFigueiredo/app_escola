import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CardGlossaryButton extends StatelessWidget {
  final String text;
  final String subText;
  final String? pageName;
  final Function? onTap;

  const CardGlossaryButton({
    required this.text,
    required this.subText,
    this.pageName,
    super.key,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 12.w),
      child: InkWell(
        onTap: () {
          // if (onTap == null) {
          //   pageName.isNullOrEmpty ? null : Get.toNamed(pageName!);
          //   return;
          // }

          onTap!();
        },
        child: Container(
          height: .209.sh,
          width: 0.72.sw,
          padding: EdgeInsets.symmetric(horizontal: 18.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r), // NOTE: 40.w
            color: AppTheme.colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 22.h, bottom: 15.h),
                child: Container(
                  height: 0.045.sh,
                  width: 0.1.sw,
                  decoration: BoxDecoration(
                    color: AppTheme.colors.whiteLight,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: ImageIcon(
                    AssetImage('assets/icons/list.png'),
                    color: AppTheme.colors.primary,
                    size: 25.sp,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10.h),
                        child: Text(
                          text,
                          overflow: TextOverflow.ellipsis,
                          style: AppTheme.textStyles.subTitle.copyWith(
                            color: AppTheme.colors.primaryDark,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Container(
                        height: 0.07.sh,
                        width: 0.5.sw,
                        child: Text(
                          subText,
                          style: AppTheme.textStyles.label.copyWith(
                            color: AppTheme.colors.primaryLight,
                          ),
                        ),
                      ),
                    ],
                  ),
                  ImageIcon(
                    AssetImage('assets/icons/arrowRight.png'),
                    color: AppTheme.colors.secondary,
                    size: 29.sp,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
