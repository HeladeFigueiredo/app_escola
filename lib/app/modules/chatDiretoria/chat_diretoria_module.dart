import 'package:get/get.dart';

import 'chat_diretoria_binding.dart';
import 'chat_diretoria_view.dart';

abstract class ChatDiretoriaModule {
  static const path = '/chat-diretoria';

  static GetPage page = GetPage(
    name: path,
    page: () => const ChatDiretoriaView(),
    binding: ChatDiretoriaBinding(),
  );
}
