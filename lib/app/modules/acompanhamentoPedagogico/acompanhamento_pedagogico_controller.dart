import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/data/enumerators/assuntos_chat_diretoria.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/index.dart';
import 'package:app_uninter/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AcompanhamentoPedagogicoController extends BaseController {
  final TextEditingController mensagemController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  final assuntoSelecionado = Rxn<AssuntosChatDiretoria>(null);

  void onAssuntoSelecionado(AssuntosChatDiretoria? assunto) {
    assuntoSelecionado.value = assunto;
  }

  String? validateMensagem(String? text) {
    if (text?.isEmpty ?? true) {
      return 'Campo obrigatório';
    }

    if (text!.length < 10) {
      return 'Por favor, escreva uma mensagem';
    }

    return null;
  }

  Future enviarMensagem() async {
    if (registerFormKey.currentState?.validate() ?? false) {
      await SlideUp().dialog(
        title: 'Mensagem enviada!',
        body: 'Sua mensagem foi enviada e será respondida em até 48h',
        withoutCancel: true,
        confirmText: 'Entendi',
        confirmBackgroundColor: AppTheme.colors.primary,
        confirmTextColor: AppTheme.colors.white,
        onConfirm: () => Get.toNamed(HomeModule.path),
      );
    }
  }
}
