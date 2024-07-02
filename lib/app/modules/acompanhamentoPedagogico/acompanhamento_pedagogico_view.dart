import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'acompanhamento_pedagogico_controller.dart';

class AcompanhamentoPedagogicoView extends GetView<AcompanhamentoPedagogicoController> {
  const AcompanhamentoPedagogicoView({Key? key}) : super(key: key);

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
                        Icons.chat_bubble_outline_outlined,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 5.h),
                    child: Text(
                      'Acompanhamento \nPedagógico',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    'Fique por dentro do desempenho escolar do seu filho',
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.label.copyWith(
                      color: AppTheme.colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 50.h, left: 26.w),
                        child: Text(
                          'Informações do Aluno',
                          style: AppTheme.textStyles.posSubTitle.copyWith(
                            color: AppTheme.colors.primaryDark,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 40.h),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                width: 0.9.sw,
                                decoration: BoxDecoration(
                                  color: AppTheme.colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24.r),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    renderDetails('Aluno', 'Hélade Beatriz Farias Figueiredo'),
                                    renderDetails('Turma', 'Pré III'),
                                    renderDetails('Prof°', 'Cristhiane Néllie'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: Text(
                          'Acompanhamento Pedagógico',
                          style: AppTheme.textStyles.posSubTitle.copyWith(
                            color: AppTheme.colors.primaryDark,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, bottom: 30.h),
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                width: 0.9.sw,
                                decoration: BoxDecoration(
                                  color: AppTheme.colors.white,
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(24.r),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    renderDetails('Assiduidade', '🖤🖤🖤🖤♡'),
                                    renderDetails('Dever de casa', '🖤🖤🖤️♡♡'),
                                    renderDetails('Concentração na aula', '🖤🖤️♡♡♡'),
                                    renderDetails('Respeito com colegas', '🖤🖤🖤🖤🖤'),
                                    renderDetails('Cuidado com material escolar', '🖤🖤🖤️♡♡'),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 26.w),
                        child: Text(
                          'Relatório Semestral',
                          style: AppTheme.textStyles.posSubTitle.copyWith(
                            color: AppTheme.colors.primaryDark,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        width: 0.95.sw,
                        child: Padding(
                          padding: EdgeInsets.only(top: 6.h, bottom: 25.h, left: 26.w, right: 20.w),
                          child: Text(
                            'O relatório semestral ficará disponível a partir de 30 de Junho de 2024 e será enviado '
                            'para o e-mail do responsável cadastrado.',
                            style: AppTheme.textStyles.prePosLabel.copyWith(
                              color: AppTheme.colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column renderDetails(String titulo, String? texto, {double? paddingLeft}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 20.h, bottom: 10.h, left: paddingLeft ?? 25.w),
          child: Text(
            titulo,
            style: AppTheme.textStyles.posLabel.copyWith(
              color: AppTheme.colors.black,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 15.h, left: paddingLeft ?? 25.w, right: 35.w),
          child: Text(
            texto ?? 'Não informado',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: AppTheme.textStyles.posLabel.copyWith(
              color: AppTheme.colors.black,
              fontWeight: FontWeight.w300,
            ),
          ),
        ),
        Center(
          child: Container(
            color: AppTheme.colors.whiteDark,
            height: 0.001.sh,
            width: 0.8.sw,
          ),
        ),
      ],
    );
  }
}
