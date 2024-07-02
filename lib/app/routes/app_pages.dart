import 'package:app_uninter/app/modules/acompanhamentoPedagogico/acompanhamento_pedagogico_module.dart';
import 'package:app_uninter/app/modules/avisos/avisos_module.dart';
import 'package:app_uninter/app/modules/bilheteDaProfessora/bilhete_da_professora_module.dart';
import 'package:app_uninter/app/modules/calendarioEscolar/calendario_escolar_module.dart';
import 'package:app_uninter/app/modules/chatDiretoria/chat_diretoria_module.dart';
import 'package:app_uninter/app/modules/chatProfessora/chat_professora_module.dart';
import 'package:app_uninter/app/modules/forgotCredentials/forgot_credentials_module.dart';
import 'package:app_uninter/app/modules/home/home_module.dart';
import 'package:app_uninter/app/modules/login/login_module.dart';
import 'package:app_uninter/app/modules/sobreEscola/sobre_a_escola_module.dart';
import 'package:app_uninter/app/modules/user/user_profile_module.dart';

class AppPages {
  AppPages._();

  static final routes = [
    LoginModule.page,
    ForgotCredentialsModule.page,
    HomeModule.page,
    UserProfileModule.page,
    SobreEscolaModule.page,
    AcompanhamentoPedagogicoModule.page,
    CalendarioEscolarModule.page,
    AvisosModule.page,
    BilheteDaProfessoraModule.page,
    ChatProfessoraModule.page,
    ChatDiretoriaModule.page,
  ];
}
