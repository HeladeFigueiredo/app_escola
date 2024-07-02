import 'package:get/get.dart';

import 'acompanhamento_pedagogico_controller.dart';

class AcompanhamentoPedagogicoBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AcompanhamentoPedagogicoController>(() => AcompanhamentoPedagogicoController());
  }
}
