import 'package:get/get.dart';

import 'avisos_controller.dart';

class AvisosBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AvisosController>(() => AvisosController());
  }
}
