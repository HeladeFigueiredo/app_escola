import 'package:get/get.dart';

import 'forgot_credentials_controller.dart';

class ForgotCredentialsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ForgotCredentialsController>(() => ForgotCredentialsController());
  }
}
