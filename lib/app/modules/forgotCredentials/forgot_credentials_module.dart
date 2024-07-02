import 'package:get/get.dart';

import 'forgot_credentials_binding.dart';
import 'forgot_credentials_view.dart';

abstract class ForgotCredentialsModule {
  static const path = '/forgot-credentials';

  static GetPage page = GetPage(
    name: path,
    page: () => const ForgotCredentialsView(),
    binding: ForgotCredentialsBinding(),
  );
}
