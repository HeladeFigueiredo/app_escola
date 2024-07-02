import 'package:get/get.dart';

import 'user_profile_binding.dart';
import 'user_profile_view.dart';

abstract class UserProfileModule {
  static const path = '/user-profile';

  static GetPage page = GetPage(
    name: path,
    page: () => const UserProfileView(),
    binding: UserProfileBinding(),
  );
}
