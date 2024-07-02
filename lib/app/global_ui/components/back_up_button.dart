import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BackUpButton extends StatelessWidget {
  final void Function()? action;
  final IconData? icon;
  final double? padding;
  final double? height;
  final double? width;

  const BackUpButton({
    this.action,
    this.icon,
    this.padding,
    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 35.h),
      child: InkWell(
        onTap: () {},
        child: Center(
          child: Container(
            height: 0.16.sh,
            width: 0.89.sw,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(24.r),
              color: AppTheme.colors.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 0.042.sh,
                  width: 0.095.sw,
                  margin: EdgeInsets.only(top: 20.r),
                  decoration: BoxDecoration(
                    color: AppTheme.colors.secondary,
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: ImageIcon(
                    AssetImage('assets/icons/arrowUp.png'),
                    color: AppTheme.colors.white,
                    size: 28.sp,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20.h, bottom: 8.h),
                  child: Text(
                    'Voltar ao topo!',
                    style: AppTheme.textStyles.subTitle.copyWith(
                      color: AppTheme.colors.white,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
                Text(
                  'Os detalhes terminam aqui',
                  style: AppTheme.textStyles.label.copyWith(
                    color: AppTheme.colors.whiteLight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
