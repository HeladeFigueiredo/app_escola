import 'package:get/get.dart';

import 'avisos_binding.dart';
import 'avisos_view.dart';

abstract class AvisosModule {
  static const path = '/avisos';

  static GetPage page = GetPage(
    name: path,
    page: () => const AvisosView(),
    binding: AvisosBinding(),
  );
}
