import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'calendario_escolar_controller.dart';

class CalendarioEscolarView extends GetView<CalendarioEscolarController> {
  const CalendarioEscolarView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafePage(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 1.sw,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.r),
                  topRight: Radius.circular(40.r),
                ),
                color: AppTheme.colors.whiteDark,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GoBackButton(
                    color: AppTheme.colors.primary,
                    action: controller.backPage,
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10.h),
                    child: Container(
                      height: 0.167.sh,
                      width: 0.37.sw,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.primaryDark,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Icon(
                        Icons.calendar_month_outlined,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Text(
                      'Calendário Escolar',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    'Acompanhe o calendário escolar e fique por dentro dos \neventos escolares, feriados e período avaliativo',
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.label.copyWith(
                      color: AppTheme.colors.black,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 55.h, left: 24.w, bottom: 15.h),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.h),
                              child: Text(
                                'Junho 2024',
                                style: AppTheme.textStyles.posSubTitle.copyWith(
                                  color: AppTheme.colors.primary,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              'Acompanhe o calendário escolar do mês vigente',
                              style: AppTheme.textStyles.prePosLabel.copyWith(
                                color: AppTheme.colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/junho.png',
                        width: .92.sw,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, left: 24.w, bottom: 15.h),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(bottom: 2.h),
                              child: Text(
                                'Calendário Anual 2024',
                                style: AppTheme.textStyles.posSubTitle.copyWith(
                                  color: AppTheme.colors.primary,
                                  fontWeight: FontWeight.w800,
                                ),
                              ),
                            ),
                            Text(
                              'Acompanhe o calendário escolar do ano de 2024',
                              style: AppTheme.textStyles.prePosLabel.copyWith(
                                color: AppTheme.colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 35.h),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/calendario_anual.png',
                          width: .92.sw,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
