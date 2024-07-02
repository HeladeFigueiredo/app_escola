import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/data/enumerators/assuntos_chat_diretoria.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/index.dart';
import 'package:app_uninter/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

typedef NewsItem = ({int id, bool isNew});

class AvisosController extends BaseController {
  final TextEditingController mensagemController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  final assuntoSelecionado = Rxn<AssuntosChatDiretoria>(null);

  void onAssuntoSelecionado(AssuntosChatDiretoria? assunto) {
    assuntoSelecionado.value = assunto;
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
