import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BilheteProfessora extends StatelessWidget {
  final String data;
  final String mensagem;
  final double? height;
  final String? enviadoPor;
  late final bool? novo;
  final void Function()? action;

  final Color? color;
  final String? text;
  final AssetImage? icon;
  final double? sizeBadge;
  final TextStyle? textStyle;
  final Color? colorIcon;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool? withShadow;

  BilheteProfessora({
    required this.data,
    required this.mensagem,
    this.height,
    this.enviadoPor,
    this.novo,
    this.action,
    this.color,
    this.text,
    this.icon,
    this.sizeBadge,
    this.textStyle,
    this.colorIcon,
    this.margin,
    this.padding,
    this.withShadow = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: action,
      child: Padding(
        padding: EdgeInsets.only(bottom: 35.h),
        child: Container(
          height: height ?? 0.25.sh,
          width: 0.9.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppTheme.colors.whiteLight,
            border: Border.all(
              color: AppTheme.colors.primary,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, left: 20.w, bottom: 8.h),
                    child: Text(
                      data,
                      style: AppTheme.textStyles.label.copyWith(
                        color: AppTheme.colors.primary,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  if (novo ?? false)
                    Padding(
                      padding: EdgeInsets.only(top: 20.h, right: 20.w, bottom: 8.h),
                      child: Container(
                        width: 0.2.sw,
                        height: 0.02.sh,
                        decoration: BoxDecoration(
                          color: AppTheme.colors.primary,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Center(
                          child: Text(
                            'NOVO',
                            style: AppTheme.textStyles.preLabel.copyWith(
                              color: AppTheme.colors.white,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                    ),
                ],
              ),
              Center(
                child: Container(
                  height: 0.001.sh,
                  width: 0.8.sw,
                  color: AppTheme.colors.primary,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w),
                child: Text(
                  'Caro responsável,',
                  style: AppTheme.textStyles.label,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
                child: Text(
                  mensagem,
                  textAlign: TextAlign.justify,
                  style: AppTheme.textStyles.label,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
                    child: Text(
                      enviadoPor ?? 'Atenciosamente, prof° Cristhiane Néllie',
                      style: AppTheme.textStyles.label,
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
