import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/border_input.dart';
import 'package:app_uninter/app/global_ui/components/button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafePage(
      heightWhite: .2.sh,
      child: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 130.h, bottom: 25.h),
                  child: Center(
                    child: Container(
                      width: .65.sw,
                      child: Image.asset(
                        'assets/images/logo-cmrei-irma-dulce.png',
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 90.h),
                  child: Container(
                    width: 1.sw,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(80.r),
                        topRight: Radius.circular(80.r),
                      ),
                      color: AppTheme.colors.whiteDark,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 55.h, bottom: 5.h),
                          child: Text(
                            'CONECTA Irmã Dulce',
                            textAlign: TextAlign.center,
                            style: AppTheme.textStyles.display.copyWith(
                              color: AppTheme.colors.primaryDark,
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ),
                        Text(
                          'Espaço de comunicação entre pais e escola',
                          textAlign: TextAlign.center,
                          style: AppTheme.textStyles.prePosLabel.copyWith(
                            color: AppTheme.colors.black,
                          ),
                        ),
                        Form(
                          key: controller.loginFormKey,
                          child: Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 60.h, bottom: 20.h),
                                child: Obx(
                                  () => BorderInput(
                                    hint: 'Código do aluno',
                                    icon: AssetImage('assets/icons/user.png'),
                                    type: TextInputType.emailAddress,
                                    isDisabled: controller.isLoading.value,
                                    validation: controller.validateCodigo,
                                    controller: controller.codigoController,
                                  ),
                                ),
                              ),
                              BorderInput(
                                hint: 'Sua senha',
                                isPassword: true,
                                isDisabled: controller.isLoading.value,
                                validation: controller.validatePassword,
                                controller: controller.passController,
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 20.w, bottom: 35.h),
                              child: TextButton(
                                onPressed: controller.onForgotCredentials,
                                child: Text(
                                  'Esqueci as credenciais',
                                  style: AppTheme.textStyles.prePosLabel.copyWith(
                                    color: AppTheme.colors.black,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 10.h),
                          child: Button(
                            textValue: 'Acessar',
                            textColor: AppTheme.colors.white,
                            isDisabled: controller.isLoading.value,
                            onTouchCallback: controller.onLogin,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
