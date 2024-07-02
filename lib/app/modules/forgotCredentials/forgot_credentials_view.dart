import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/border_input.dart';
import 'package:app_uninter/app/global_ui/components/button.dart';
import 'package:app_uninter/app/global_ui/components/go_back_button.dart';
import 'package:app_uninter/app/global_ui/components/safe_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'forgot_credentials_controller.dart';

class ForgotCredentialsView extends GetView<ForgotCredentialsController> {
  const ForgotCredentialsView({Key? key}) : super(key: key);

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
                        Icons.lock_outline,
                        size: 73.sp,
                        color: AppTheme.colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 40.h, bottom: 5.h),
                    child: Text(
                      'Esqueci as credenciais',
                      textAlign: TextAlign.center,
                      style: AppTheme.textStyles.header.copyWith(
                        color: AppTheme.colors.primaryDark,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Text(
                    'Você receberá  um e-mail com o passo a passo de \ncomo recuperar as suas credenciais',
                    textAlign: TextAlign.center,
                    style: AppTheme.textStyles.label.copyWith(
                      color: AppTheme.colors.black,
                    ),
                  ),
                  Form(
                    key: controller.registerFormKey,
                    child: Padding(
                      padding: EdgeInsets.only(top: 80.h, bottom: 30.h),
                      child: BorderInput(
                        hint: 'Informe seu e-mail',
                        icon: AssetImage('assets/icons/email.png'),
                        type: TextInputType.emailAddress,
                        validation: controller.validateEmail,
                        controller: controller.emailController,
                      ),
                    ),
                  ),
                  Button(
                    textValue: 'Enviar e-mail',
                    margin: EdgeInsets.only(bottom: 20.h),
                    onTouchCallback: controller.toForgotPassword,
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
