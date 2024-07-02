import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BadgeIcon extends StatelessWidget {
  final Color? color;
  final String? text;
  final AssetImage? icon;
  final double? sizeBadge;
  final TextStyle? textStyle;
  final Color? colorIcon;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool? withShadow;
  final void Function()? action;

  BadgeIcon({
    this.color,
    this.text,
    this.icon,
    this.sizeBadge,
    this.textStyle,
    this.colorIcon,
    this.margin,
    this.padding,
    this.withShadow = false,
    this.action,
  }) {
    if (text != null) {
      assert(icon == null, '[BadgeIcon] O componente aceita somente texto ou icone');
    }

    if (icon != null) {
      assert(text == null, '[BadgeIcon] O componente aceita somente texto ou icone');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.only(top: 6.h, right: 5.w),
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            if (withShadow!)
              BoxShadow(
                color: AppTheme.colors.black.withOpacity(0.3),
                spreadRadius: 0.1,
                blurRadius: 30,
                offset: Offset(0, 1),
              ),
          ],
        ),
        child: InkWell(
          onTap: action,
          child: Badge(
            largeSize: sizeBadge ?? 33.sp,
            padding: padding ?? EdgeInsets.symmetric(horizontal: 12.w),
            backgroundColor: color ?? AppTheme.colors.primary,
            label: Row(
              children: [
                if (text != null)
                  Text(
                    text!,
                    textAlign: TextAlign.center,
                    style: textStyle ??
                        AppTheme.textStyles.prepreLabel.copyWith(
                          color: AppTheme.colors.whiteDark,
                          fontWeight: FontWeight.w700,
                        ),
                  ),
                if (icon != null)
                  ImageIcon(
                    icon,
                    color: colorIcon ?? AppTheme.colors.white,
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
