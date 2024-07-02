import 'package:app_uninter/app/main_getx_app.dart';
import 'package:app_uninter/app/modules/login/login_module.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      designSize: const Size(430, 932),
      ensureScreenSize: true,
      splitScreenMode: false,
      builder: (_, __) => MainGetXApp(LoginModule.path),
    ),
  );
}
