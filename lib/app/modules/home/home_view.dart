import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/button_menu.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafePage(
      heightBlue: .6.sh,
      heightWhite: .4.sh,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 30.h, left: 20.w, right: 20.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'CMREI Irmã Dulce',
                                style: AppTheme.textStyles.posHeader.copyWith(
                                  color: AppTheme.colors.white,
                                  fontWeight: FontWeight.w700,
                                ),
                              ),
                              Text(
                                'Centro Municipal Referência no Ensino Infantil',
                                style: AppTheme.textStyles.prePosLabel.copyWith(
                                  color: AppTheme.colors.white,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                  InkWell(
                    onTap: controller.toUser,
                    child: Container(
                      height: 0.042.sh,
                      width: 0.098.sw,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.white,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Center(
                        child: Text(
                          'U',
                          style: AppTheme.textStyles.posSubTitle.copyWith(
                            fontWeight: FontWeight.bold,
                            color: AppTheme.colors.primary,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 30.h),
              child: Container(
                width: 1.sw,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.r),
                    topRight: Radius.circular(40.r),
                  ),
                  color: AppTheme.colors.whiteDark,
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 30.h, left: 24.w),
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(bottom: 2.h),
                                child: Text(
                                  'Venha participar!',
                                  style: AppTheme.textStyles.title.copyWith(
                                    color: AppTheme.colors.primary,
                                    fontWeight: FontWeight.w800,
                                  ),
                                ),
                              ),
                              Text(
                                'Você é nosso convidado de honra',
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
                      padding: EdgeInsets.only(top: 20.h, bottom: 35.h),
                      child: Center(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            'assets/images/banner-festa-junina.png',
                            width: .92.sw,
                          ),
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 13.h, left: 24.w),
                          child: Text(
                            'Menu',
                            style: AppTheme.textStyles.posSubTitle.copyWith(
                              color: AppTheme.colors.primaryDark,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ButtonMenu(
                          title: 'Calendário \nEscolar',
                          icon: Icons.calendar_month_outlined,
                          action: controller.toCalendarioEscolar,
                        ),
                        ButtonMenu(
                          title: 'Avisos \nEscolares',
                          icon: Icons.campaign,
                          action: controller.toAvisos,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25.h, bottom: 13.h, left: 24.w),
                          child: Text(
                            'Área do Aluno',
                            style: AppTheme.textStyles.posSubTitle.copyWith(
                              color: AppTheme.colors.primaryDark,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 20.w),
                            child: ButtonMenu(
                              title: 'Acompanhamento \npedagógico',
                              icon: Icons.school_outlined,
                              action: controller.toAcompanhamentoPedagogico,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 10.w),
                            child: ButtonMenu(
                              title: 'Bilhete da \nprofessora',
                              icon: Icons.article_outlined,
                              action: controller.toBilheteDaProfessora,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20.w),
                            child: ButtonMenu(
                              title: 'Informações do \n aluno',
                              icon: Icons.person_2_outlined,
                              action: controller.toChatProfessora,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 25.h, bottom: 13.h, left: 24.w),
                          child: Text(
                            'Fale conosco',
                            style: AppTheme.textStyles.posSubTitle.copyWith(
                              color: AppTheme.colors.primaryDark,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 35.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ButtonMenu(
                            title: 'Chat professora',
                            icon: Icons.chat,
                            action: controller.toChatProfessora,
                          ),
                          ButtonMenu(
                            title: 'Chat diretoria',
                            icon: Icons.forum_outlined,
                            action: controller.toChatDiretoria,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
