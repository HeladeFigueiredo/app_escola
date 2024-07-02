import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'sobre_a_escola_controller.dart';

class SobreEscolaView extends GetView<SobreEscolaController> {
  const SobreEscolaView({Key? key}) : super(key: key);

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
                        Icons.account_balance_outlined,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 20.h, bottom: 5.h),
                    child: Text(
                      'Sobre a Escola',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    'Conheça mais sobre a história da escola e seus princípios',
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.label.copyWith(
                      color: AppTheme.colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, left: 24.w, bottom: 10.h),
                        child: Text(
                          'Inauguração',
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
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w),
                        child: Container(
                          width: 0.9.sw,
                          child: Text(
                            'A Escola Primária Sol Nascente, inaugurada em 15 de março de 2024, marcou um novo capítulo '
                            'para a comunidade de Vila Nova. Criada para enfrentar a falta de infraestrutura '
                            'educacional, a escola oferece um ambiente moderno e acolhedor com salas de aula equipadas, '
                            'biblioteca, laboratório de ciências, sala de informática e áreas para atividades esportivas.',
                            textAlign: TextAlign.justify,
                            style: AppTheme.textStyles.label.copyWith(
                              color: AppTheme.colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, left: 20.w, right: 20.w),
                        child: Container(
                          width: 0.9.sw,
                          child: Text(
                            'AA missão da escola é proporcionar uma educação de alta qualidade que '
                            'promova o desenvolvimento integral dos alunos, preparando-os para serem cidadãos éticos, '
                            'responsáveis e bem-sucedidos. Nossa visão é ser reconhecida como uma instituição de excelência '
                            'educacional, inovadora e inclusiva, onde cada aluno se sinta valorizado e inspirado a alcançar '
                            'seu pleno potencial, contribuindo positivamente para a sociedade.',
                            textAlign: TextAlign.justify,
                            style: AppTheme.textStyles.label.copyWith(
                              color: AppTheme.colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 15.h, bottom: 35.h),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/inauguracao.png',
                          width: .87.sw,
                        ),
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 24.w, bottom: 10.h),
                        child: Text(
                          'Missão e Visão',
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
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 15.h),
                        child: Container(
                          width: 0.9.sw,
                          child: Text(
                            'Na Escola Primária Sol Nascente, nossos valores fundamentais são respeito, excelência, '
                            'inclusão, responsabilidade, inovação e colaboração. Promovemos um ambiente onde todos são '
                            'valorizados, incentivando o desenvolvimento integral dos alunos. Buscamos excelência '
                            'acadêmica, celebramos a diversidade, encorajamos a responsabilidade individual e fomentamos '
                            'a criatividade e a inovação. Valorizamos a colaboração e o trabalho em equipe, preparando '
                            'nossos alunos para serem cidadãos éticos e responsáveis, prontos para contribuir positivamente '
                            'para a sociedade',
                            textAlign: TextAlign.justify,
                            style: AppTheme.textStyles.label.copyWith(
                              color: AppTheme.colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 10.h, left: 24.w, bottom: 10.h),
                        child: Text(
                          'Método de Ensino',
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
                      Padding(
                        padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 35.h),
                        child: Container(
                          width: 0.9.sw,
                          child: Text(
                            'Na Escola Primária Sol Nascente, adotamos um método de ensino centrado no aluno, que combina '
                            'abordagens tradicionais e inovadoras para oferecer uma educação holística e personalizada. '
                            'Nossa pedagogia é baseada em princípios construtivistas, onde os alunos são incentivados a '
                            'explorar, questionar e construir seu próprio conhecimento. Utilizamos tecnologias educacionais '
                            'modernas e recursos didáticos diversificados para tornar o aprendizado mais envolvente e eficaz.',
                            textAlign: TextAlign.justify,
                            style: AppTheme.textStyles.label.copyWith(
                              color: AppTheme.colors.black,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 35.h),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          'assets/images/metodo_de_ensino.jpg',
                          width: .9.sw,
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
