import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';

class MainGetXApp extends StatelessWidget {
  final String initialPage;

  MainGetXApp(this.initialPage);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        statusBarColor: AppTheme.colors.black,
      ),
    );

    return GetMaterialApp(
      title: 'Plataforma GT',
      debugShowCheckedModeBanner: false,
      initialRoute: initialPage,
      getPages: AppPages.routes,
      theme: AppTheme.defaultTheme,
      locale: const Locale('pt', 'BR'),
      supportedLocales: const [Locale('pt', 'BR')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
    );
  }
}
