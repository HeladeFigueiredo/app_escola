import 'package:get/get.dart';

import 'bilhete_da_professora_controller.dart';

class BilheteDaProfessoraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BilheteDaProfessoraController>(() => BilheteDaProfessoraController());
  }
}
