import 'package:app_uninter/app/data/enumerators/assuntos_chat_diretoria.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/button.dart';
import 'package:app_uninter/app/global_ui/components/dropdown.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/text_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'chat_diretoria_controller.dart';

class ChatDiretoriaView extends GetView<ChatDiretoriaController> {
  const ChatDiretoriaView({Key? key}) : super(key: key);

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
                    padding: EdgeInsets.only(top: 60.h),
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
                    padding: EdgeInsets.only(top: 40.h, bottom: 5.h),
                    child: Text(
                      'Chat Diretoria',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    'Envei uma mensagem para a coordenação escolar',
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.label.copyWith(
                      color: AppTheme.colors.black,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 10.h, left: 24.w),
                        child: Text(
                          'Assunto',
                          style: AppTheme.textStyles.posSubTitle.copyWith(
                            color: AppTheme.colors.primaryDark,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Form(
                    key: controller.registerFormKey,
                    child: Column(
                      children: [
                        Obx(
                          () => Dropdown<AssuntosChatDiretoria>(
                            title: 'Selecione um assunto',
                            selectedEntry: controller.assuntoSelecionado.value,
                            onSelected: controller.onAssuntoSelecionado,
                            items: AssuntosChatDiretoria.values
                                .map((termo) => DropdownMenuEntry(value: termo, label: termo.description))
                                .toList(),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 20.h, bottom: 40.h),
                          child: TextInput(
                            type: TextInputType.text,
                            maxLines: 15,
                            validation: controller.validateMensagem,
                            controller: controller.mensagemController,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Button(
                    textValue: 'Enviar mensagem',
                    margin: EdgeInsets.only(bottom: 20.h),
                    onTouchCallback: controller.enviarMensagem,
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
