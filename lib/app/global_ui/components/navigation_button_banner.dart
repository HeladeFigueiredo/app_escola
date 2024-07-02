import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NavigationButtonBanner extends StatelessWidget {
  final String text;
  final Color? colorText;
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

  NavigationButtonBanner({
    required this.text,
    this.colorText,
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
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 13.w,
        right: 13.w,
        top: paddingTop ?? 8.h,
        bottom: paddingBottom ?? 4.h,
      ),
      child: ClipRRect(
        child: Banner(
          message: 'Em breve',
          location: BannerLocation.topEnd,
          color: AppTheme.colors.secondary,
          textStyle: AppTheme.textStyles.preLabel.copyWith(
            color: AppTheme.colors.white,
            fontWeight: FontWeight.w700,
          ),
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
                    if (backgroundCard == null)
                      Container(
                        height: heightCircleIconLeft ?? 0.044.sh,
                        width: widthCircleIconLeft ?? 0.097.sw,
                        decoration: BoxDecoration(
                          color: colorCircleIconLeft ?? AppTheme.colors.whiteLight,
                          borderRadius: BorderRadius.circular(100.r),
                        ),
                        child: ImageIcon(
                          imageIconLeft ?? AssetImage('assets/icons/contact/help.png'),
                          color: colorIconLeft ?? AppTheme.colors.primary,
                        ),
                      ),
                    if (backgroundCard != null)
                      ImageIcon(
                        imageIconLeft ?? AssetImage('assets/icons/contact/gmail.png'),
                        color: colorIconLeft ?? AppTheme.colors.primary,
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
                                    color: colorText ?? AppTheme.colors.primaryDark,
                                    fontWeight: FontWeight.w700,
                                  ),
                            ),
                          ),
                          if (subText != null)
                            Text(
                              subText!,
                              style: AppTheme.textStyles.label.copyWith(
                                color: colorSubtext ?? AppTheme.colors.primaryLight,
                              ),
                            ),
                        ],
                      ),
                    ),
                  ],
                ),
                // ImageIcon(
                //   AssetImage('assets/icons/arrowRight.png'),
                //   color: colorIconRight ?? AppTheme.colors.secondary,
                //   size: 28.sp,
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
