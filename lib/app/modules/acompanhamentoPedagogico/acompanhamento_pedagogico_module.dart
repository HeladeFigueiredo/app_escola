import 'package:get/get.dart';

import 'acompanhamento_pedagogico_binding.dart';
import 'acompanhamento_pedagogico_view.dart';

abstract class AcompanhamentoPedagogicoModule {
  static const path = '/acompanhamento-pedagogico';

  static GetPage page = GetPage(
    name: path,
    page: () => const AcompanhamentoPedagogicoView(),
    binding: AcompanhamentoPedagogicoBinding(),
  );
}
