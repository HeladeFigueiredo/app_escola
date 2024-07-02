import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AvisoEscolar extends StatelessWidget {
  final String mensagem;
  final String imagem;
  final double? height;
  final String? enviadoPor;
  final bool? novo;
  final String dataPublicacao;

  final void Function()? onTap;
  final AssetImage? iconLike;

  final Color? color;
  final String? text;
  final AssetImage? icon;
  final double? sizeBadge;
  final TextStyle? textStyle;
  final Color? colorIcon;
  final EdgeInsets? margin;
  final EdgeInsets? padding;
  final bool? withShadow;

  AvisoEscolar({
    required this.mensagem,
    required this.dataPublicacao,
    required this.imagem,
    this.height,
    this.enviadoPor,
    this.novo,
    this.onTap,
    this.iconLike,
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
      onTap: onTap ?? () => null,
      child: Padding(
        padding: EdgeInsets.only(bottom: 35.h),
        child: Container(
          height: 0.47.sh,
          width: 0.9.sw,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: AppTheme.colors.whiteLight,
            border: Border.all(
              color: AppTheme.colors.primary,
            ),
          ),
          child: Padding(
            padding: EdgeInsets.only(top: 15.h, left: 20.w, bottom: 10.h, right: 20.w),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: .12.sw,
                          width: .12.sw,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            color: AppTheme.colors.primary,
                          ),
                          child: Icon(
                            Icons.school,
                            size: 30.sp,
                            color: AppTheme.colors.white,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 12.w),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CMREI Irmã Dulce',
                                style: AppTheme.textStyles.subTitle.copyWith(
                                  color: AppTheme.colors.primary,
                                  fontWeight: FontWeight.w900,
                                ),
                              ),
                              Text(
                                dataPublicacao,
                                style: AppTheme.textStyles.preLabel.copyWith(
                                  color: AppTheme.colors.black,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    if (novo ?? false)
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 8.h, right: 6.w),
                        child: Container(
                          width: 0.18.sw,
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
                Padding(
                  padding: EdgeInsets.only(top: 10.h),
                  child: Center(
                    child: Container(
                      height: 0.001.sh,
                      width: 0.8.sw,
                      color: AppTheme.colors.primary,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: Text(
                        'Olá pessoal!',
                        style: AppTheme.textStyles.label,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15.h),
                      child: Text(
                        mensagem,
                        textAlign: TextAlign.justify,
                        style: AppTheme.textStyles.label,
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 10.h),
                  child: Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        imagem,
                        width: .79.sw,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 15.h, left: 20.w, right: 20.w),
                      child: Text(
                        'Atenciosamente, direção escolar',
                        style: AppTheme.textStyles.label,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
