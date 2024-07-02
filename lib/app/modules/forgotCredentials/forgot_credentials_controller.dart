import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/index.dart';
import 'package:app_uninter/app/modules/login/login_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ForgotCredentialsController extends BaseController {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();

  String? validateEmail(String? email) {
    if (email?.isEmpty ?? true) {
      return 'Campo obrigatório';
    }

    if (!email!.isEmail) {
      return 'Formato de email inválido';
    }

    return null;
  }

  // TODO: REFATORAR A FUNÇÃO PARA EVITAR REPETIÇÃO DE CÓDIGO
  Future toForgotPassword() async {
    if (registerFormKey.currentState?.validate() ?? false) {
      await SlideUp().dialog(
        title: 'E-mail enviado!',
        body: 'Você recebereu um e-mail com o passo a passo para recuperar suas credenciais ',
        confirmText: 'Entendi',
        withoutCancel: true,
        onConfirm: () async {
          Get.toNamed(LoginModule.path);
        },
      );
    }
  }
}
