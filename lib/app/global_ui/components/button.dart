import 'package:app_uninter/app/data/helpers/index.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Button extends StatelessWidget {
  final String textValue;
  final bool border;
  final bool isDisabled;
  final Color? textColor;
  final void Function()? onTouchCallback;
  final EdgeInsets? margin;
  final Color? color;
  final double? minWidth;
  final EdgeInsets? padding;

  const Button({
    required this.textValue,
    this.textColor,
    this.isDisabled = false,
    this.border = false,
    this.onTouchCallback,
    this.margin,
    this.color,
    this.minWidth,
    this.padding,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: 0.3.sh, minWidth: minWidth ?? 0.91.sw),
      color: Colors.transparent,
      margin: margin,
      child: InkWell(
        onTap: isDisabled ? null : onTouchCallback,
        child: Container(
          padding: padding ?? Helpers().paddingAll(18),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(42.r),
            color: !isDisabled ? color ?? AppTheme.colors.primary : AppTheme.colors.whiteDark,
            border: theBorder(),
          ),
          child: Text(
            textValue,
            textAlign: TextAlign.center,
            style: AppTheme.textStyles.posLabel.copyWith(
              color: !isDisabled ? textColor ?? AppTheme.colors.white : AppTheme.colors.backOpacity,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }

  Border? theBorder() {
    bool withBorder = false;

    if (isDisabled) {
      withBorder = true;
    }

    if (withBorder || border) {
      return Border.fromBorderSide(
        BorderSide(
          width: 1.0.w,
          color: AppTheme.colors.primaryLightBorder,
        ),
      );
    } else {
      return null;
    }
  }
}
