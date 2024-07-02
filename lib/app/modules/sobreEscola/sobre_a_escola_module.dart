import 'package:get/get.dart';

import 'sobre_a_escola_binding.dart';
import 'sobre_a_escola_view.dart';

abstract class SobreEscolaModule {
  static const path = '/sobre-a-escola';

  static GetPage page = GetPage(
    name: path,
    page: () => const SobreEscolaView(),
    binding: SobreEscolaBinding(),
  );
}
