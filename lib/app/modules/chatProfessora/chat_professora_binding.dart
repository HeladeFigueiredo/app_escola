import 'package:get/get.dart';

import 'chat_professora_controller.dart';

class ChatProfessoraBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ChatProfessoraController>(() => ChatProfessoraController());
  }
}
