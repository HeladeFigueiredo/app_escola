import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/bilhete_professora.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'bilhete_da_professora_controller.dart';

class BilheteDaProfessoraView extends GetView<BilheteDaProfessoraController> {
  const BilheteDaProfessoraView({Key? key}) : super(key: key);

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
                        Icons.newspaper_sharp,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, bottom: 5.h),
                    child: Text(
                      'Bilhete da Professora',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 35.h),
                    child: Text(
                      'Bilhetinhos enviados pela professora para facilitar a \ncomunicação entre responsáveis e educadores',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.label.copyWith(
                        color: AppTheme.colors.black,
                      ),
                    ),
                  ),
                  BilheteProfessora(
                    data: 'Data: 14/06/2024',
                    mensagem:
                        'Como desccrito no calendário, realizaremos a Reunião de Pais e Mestres no dia 26 de Junho de 2024. '
                        'Conto com a sua presença para um acompanhamento pedagógico efetivo.',
                    height: 0.225.sh,
                    novo: true,
                  ),
                  BilheteProfessora(
                    data: 'Data: 14/06/2024',
                    mensagem:
                        'Como desccrito no calendário, realizaremos a Festa Junina Escolar no dia 20 de Junho de 2024. '
                        'Favor providenciar vestimenta adequada para a apresentação de quadrilha.',
                    height: 0.225.sh,
                    novo: true,
                  ),
                  BilheteProfessora(
                    data: 'Data: 03/05/2024',
                    mensagem:
                        'Hoje durante o horário do lanche, sua filha Hélade derrubou leite na camisa do uniforme. '
                        'A camisa suja está em uma sacola na mochila.',
                    enviadoPor: 'Atenciosamente, direção escolar',
                    height: 0.215.sh,
                  ),
                  BilheteProfessora(
                    data: 'Data: 20/04/2024',
                    mensagem:
                        'Na sexta-feira, dia 26 de Abril, estamos organizando uma atividade lúdica chamada "Fruta '
                        'do Dia". Para esta atividade contamos com a colaboração de vocês! Favor enviar uma camisa '
                        'na cor Vermelha na mochila para realizarmos a dinâmica.',
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
