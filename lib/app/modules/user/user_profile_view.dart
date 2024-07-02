import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/navigation_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'user_profile_controller.dart';

class UserProfileView extends GetView<UserProfileController> {
  const UserProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafePage(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GoBackButton(
              color: AppTheme.colors.white,
              action: controller.backPage,
            ),
            Padding(
              padding: EdgeInsets.only(top: 15.h),
              child: SizedBox(
                height: .32.sw,
                width: .32.sw,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(100),
                  child: Image.asset(
                    fit: BoxFit.cover,
                    'assets/images/imagem_helade_teste.jpg',
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20.h),
              child: Padding(
                padding: EdgeInsets.only(bottom: 4.h),
                child: Text(
                  'Hélade Beatriz Farias Figueiredo',
                  style: AppTheme.textStyles.title.copyWith(
                    color: AppTheme.colors.white,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
            Text(
              'Prof° Cristhiane Néllie',
              style: AppTheme.textStyles.posLabel.copyWith(
                color: AppTheme.colors.whiteLight,
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              'Turma Pré-II',
              style: AppTheme.textStyles.posLabel.copyWith(
                color: AppTheme.colors.whiteLight,
                fontWeight: FontWeight.w400,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50.h),
              child: Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                  color: AppTheme.colors.whiteDark,
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 30.h),
                  child: SizedBox(
                    height: 0.55.sh,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            NavigationButton(
                              text: 'Sobre a Escola',
                              subText: 'Conheça mais sobre a escola',
                              icon: Icons.school_outlined,
                              paddingBottom: 8.h,
                              onTap: controller.toSobreEscola,
                            ),
                            NavigationButton(
                              text: 'Site da Escola',
                              subText: 'Visite o site da nossa escola',
                              icon: Icons.computer,
                              paddingBottom: 8.h,
                              onTap: controller.toWebsite,
                            ),
                            NavigationButton(
                              text: 'Central de Ajuda',
                              subText: 'Precisa de ajuda? Podemos te ajudar!',
                              icon: Icons.help_outline,
                              paddingBottom: 8.h,
                              onTap: controller.toHelp,
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            NavigationButton(
                              text: 'Sair',
                              heightCard: .082.sh,
                              icon: Icons.logout_outlined,
                              backgroundCard: AppTheme.colors.primary,
                              colorText: AppTheme.colors.white,
                              onTap: controller.toLogoff,
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 10.h, bottom: 12.h),
                              child: Text(
                                'Versão 1.0.3',
                                style: AppTheme.textStyles.prePosLabel.copyWith(
                                  color: AppTheme.colors.black,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
