import 'package:get/get.dart';

import 'calendario_escolar_binding.dart';
import 'calendario_escolar_view.dart';

abstract class CalendarioEscolarModule {
  static const path = '/calendario-escolar';

  static GetPage page = GetPage(
    name: path,
    page: () => const CalendarioEscolarView(),
    binding: CalendarioEscolarBinding(),
  );
}
