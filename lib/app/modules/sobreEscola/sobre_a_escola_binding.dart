import 'package:get/get.dart';

import 'sobre_a_escola_controller.dart';

class SobreEscolaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SobreEscolaController>(() => SobreEscolaController());
  }
}
