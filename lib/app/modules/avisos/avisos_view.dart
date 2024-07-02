import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/aviso_escolar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'avisos_controller.dart';

class AvisosView extends GetView<AvisosController> {
  const AvisosView({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 20.h),
                    child: Container(
                      height: 0.167.sh,
                      width: 0.37.sw,
                      decoration: BoxDecoration(
                        color: AppTheme.colors.primaryDark,
                        borderRadius: BorderRadius.circular(100.r),
                      ),
                      child: Icon(
                        Icons.campaign,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25.h, bottom: 5.h),
                    child: Text(
                      'Avisos Escolares',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 40.h),
                    child: Text(
                      'Área de avisos escolares para ficar por dentro de reuniões, \neventos, período avaliativo e muito mais!',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.label.copyWith(
                        color: AppTheme.colors.black,
                      ),
                    ),
                  ),
                  AvisoEscolar(
                    mensagem: 'Convidamos a todos para participar da nossa Festa Junina Escolar. Vai acontecer no dia '
                        '20 de Junho na quadra da escola CMREI Irmã Dulce. Estamos muito felizes e aguardamos a '
                        'presença de todos!',
                    dataPublicacao: 'Publicação: 02/02/2024',
                    imagem: 'assets/images/banner-festa-junina.png',
                    novo: true,
                  ),
                  AvisoEscolar(
                    mensagem: 'Convidamos a todos para participar da nossa Festa Junina Escolar. Vai acontecer no dia '
                        '20 de Junho na quadra da escola CMREI Irmã Dulce. Estamos muito felizes e aguardamos a '
                        'presença de todos!',
                    dataPublicacao: 'Publicação: 02/02/2024',
                    imagem: 'assets/images/banner-festa-junina.png',
                  ),
                  AvisoEscolar(
                    mensagem: 'Convidamos a todos para participar da nossa Festa Junina Escolar. Vai acontecer no dia '
                        '20 de Junho na quadra da escola CMREI Irmã Dulce. Estamos muito felizes e aguardamos a '
                        'presença de todos!',
                    dataPublicacao: 'Publicação: 02/02/2024',
                    imagem: 'assets/images/banner-festa-junina.png',
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
