import 'package:get/get.dart';

import 'bilhete_da_professora_binding.dart';
import 'bilhete_da_professora_view.dart';

abstract class BilheteDaProfessoraModule {
  static const path = '/bilhete-da-professora';

  static GetPage page = GetPage(
    name: path,
    page: () => const BilheteDaProfessoraView(),
    binding: BilheteDaProfessoraBinding(),
  );
}
