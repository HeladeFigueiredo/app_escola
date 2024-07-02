import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/modules/forgotCredentials/forgot_credentials_module.dart';
import 'package:app_uninter/app/modules/home/home_module.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends BaseController {
  final TextEditingController codigoController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  void onInit() {
    super.onInit();
    setLoading(false);
  }

  String? validateCodigo(String? codigo) {
    if (codigo?.isEmpty ?? true) {
      return 'Campo obrigatório';
    }

    return null;
  }

  String? validatePassword(String? password) {
    if (password?.isEmpty ?? true) {
      return 'Campo obrigatório';
    }

    // TODO: Adicionar a regra de negócio para a senha
    if (password!.length <= 4) {
      return 'Senha não pode ser menor que 4 dígitos';
    }

    return null;
  }

  Future<void> onLogin() async {
    if (loginFormKey.currentState?.validate() ?? false) {
      Get.offAllNamed(HomeModule.path);
    }
  }

  void onForgotCredentials() {
    Get.toNamed(ForgotCredentialsModule.path);
  }
}
