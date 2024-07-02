import 'package:get/get.dart';

import 'chat_professora_binding.dart';
import 'chat_professora_view.dart';

abstract class ChatProfessoraModule {
  static const path = '/chat-professora';

  static GetPage page = GetPage(
    name: path,
    page: () => const ChatProfessoraView(),
    binding: ChatProfessoraBinding(),
  );
}
