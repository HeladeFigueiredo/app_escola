import 'package:app_uninter/app/modules/home/home_view.dart';
import 'package:get/get.dart';

import 'home_binding.dart';

abstract class HomeModule {
  static const path = '/home';

  static GetPage page = GetPage(
    name: path,
    page: () => const HomeView(),
    binding: HomeBinding(),
  );
}
