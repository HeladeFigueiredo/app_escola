import 'package:get/get.dart';

import 'calendario_escolar_controller.dart';

class CalendarioEscolarBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<CalendarioEscolarController>(() => CalendarioEscolarController());
  }
}
