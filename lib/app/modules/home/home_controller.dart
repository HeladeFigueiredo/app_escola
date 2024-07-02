import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/modules/acompanhamentoPedagogico/acompanhamento_pedagogico_module.dart';
import 'package:app_uninter/app/modules/avisos/avisos_module.dart';
import 'package:app_uninter/app/modules/bilheteDaProfessora/bilhete_da_professora_module.dart';
import 'package:app_uninter/app/modules/calendarioEscolar/calendario_escolar_module.dart';
import 'package:app_uninter/app/modules/chatDiretoria/chat_diretoria_module.dart';
import 'package:app_uninter/app/modules/chatProfessora/chat_professora_module.dart';
import 'package:app_uninter/app/modules/user/user_profile_module.dart';
import 'package:get/get.dart';

class HomeController extends BaseController {
  final loadingTotal = true.obs;

  void toUser() {
    Get.toNamed(UserProfileModule.path);
  }

  void toCalendarioEscolar() {
    Get.toNamed(CalendarioEscolarModule.path);
  }

  void toAvisos() {
    Get.toNamed(AvisosModule.path);
  }

  void toBilheteDaProfessora() {
    Get.toNamed(BilheteDaProfessoraModule.path);
  }

  void toAcompanhamentoPedagogico() {
    Get.toNamed(AcompanhamentoPedagogicoModule.path);
  }

  void toChatProfessora() {
    Get.toNamed(ChatProfessoraModule.path);
  }

  void toChatDiretoria() {
    Get.toNamed(ChatDiretoriaModule.path);
  }
}
