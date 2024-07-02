import 'package:app_uninter/app/data/helpers/index.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class BaseController extends GetxController {
  final Helpers helpers = Helpers();
  final isLoading = true.obs;

  void setLoading(bool status) => isLoading.value = status;

  void backPage() {
    Get.back();
  }

  Future<void> openBrowseLink(String? link) async {
    if (link == null) {
      return;
    }

    if (!await launchUrl(Uri.parse(link))) {
      throw Exception('Houve um erro! Tente novamente, mais tarde');
    }
  }
}
