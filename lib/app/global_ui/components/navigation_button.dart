import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NavigationButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final Color? colorText;
  final double? sizeIcon;
  final TextStyle? sizeText;
  final double? widthText;
  final String? subText;
  final Color? colorSubtext;
  final Color? backgroundCard;
  final double? heightCard;
  final AssetImage? imageIconLeft;
  final Color? colorIconLeft;
  final Color? colorCircleIconLeft;
  final double? heightCircleIconLeft;
  final double? widthCircleIconLeft;
  final double? paddingTop;
  final double? paddingBottom;
  final Color? colorIconRight;
  final String? pageName;
  final Function? onTap;

  NavigationButton({
    required this.text,
    required this.icon,
    this.colorText,
    this.sizeIcon,
    this.sizeText,
    this.widthText,
    this.subText,
    this.colorSubtext,
    this.backgroundCard,
    this.heightCard,
    this.imageIconLeft,
    this.colorIconLeft,
    this.colorCircleIconLeft,
    this.heightCircleIconLeft,
    this.widthCircleIconLeft,
    this.paddingTop,
    this.paddingBottom,
    this.colorIconRight,
    this.pageName,
    this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tapAction = () {
      if (onTap != null) {
        onTap!();
      } else if (pageName != null) {
        Get.toNamed(pageName!);
      }

      return null;
    };

    return Padding(
      padding: EdgeInsets.only(
        left: 13.w,
        right: 13.w,
        top: paddingTop ?? 8.h,
        bottom: paddingBottom ?? 4.h,
      ),
      child: InkWell(
        onTap: () => tapAction(),
        child: Container(
          height: heightCard ?? .088.sh,
          width: 1.sw,
          padding: EdgeInsets.only(left: 18.w, right: 12.w),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24.r),
            color: backgroundCard ?? AppTheme.colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: heightCircleIconLeft ?? 0.044.sh,
                    width: widthCircleIconLeft ?? 0.097.sw,
                    decoration: BoxDecoration(
                      color: colorCircleIconLeft ?? AppTheme.colors.primary,
                      borderRadius: BorderRadius.circular(100.r),
                    ),
                    child: Icon(
                      icon,
                      size: sizeIcon ?? 28.sp,
                      color: AppTheme.colors.white,
                    ),
                  ),
                  Container(
                    width: widthText ?? .6.sw,
                    margin: EdgeInsets.only(left: 14.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 3.h),
                          child: Text(
                            text,
                            overflow: TextOverflow.ellipsis,
                            style: sizeText ??
                                AppTheme.textStyles.subTitle.copyWith(
                                  color: colorText ?? AppTheme.colors.primary,
                                  fontWeight: FontWeight.w700,
                                ),
                          ),
                        ),
                        if (subText != null)
                          Text(
                            subText!,
                            style: AppTheme.textStyles.label.copyWith(
                              color: colorSubtext ?? AppTheme.colors.black,
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
