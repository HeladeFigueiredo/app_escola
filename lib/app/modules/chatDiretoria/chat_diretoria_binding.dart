import 'package:get/get.dart';

import 'chat_diretoria_controller.dart';

class ChatDiretoriaBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatDiretoriaController>(() => ChatDiretoriaController());
  }
}
