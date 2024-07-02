import 'package:app_uninter/app/data/controllers/base_controller.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/slide_up/index.dart';
import 'package:app_uninter/app/modules/login/login_module.dart';
import 'package:app_uninter/app/modules/sobreEscola/sobre_a_escola_module.dart';
import 'package:get/get.dart';

class UserProfileController extends BaseController {
  void toSobreEscola() {
    Get.toNamed(SobreEscolaModule.path);
  }

  Future toWebsite() async {
    await SlideUp().dialog(
      title: 'Ir ao Site da Escola?',
      body: 'Você será redirecionado para o site. Deseja continuar?',
      confirmText: 'Visitar site',
      cancelText: 'Quero ficar',
      cancelBackgroundColor: AppTheme.colors.errorOpacity,
      cancelTextColor: AppTheme.colors.primary,
      onConfirm: () => openBrowseLink('https://google.com'),
    );
  }

  Future toHelp() async {
    await SlideUp().dialog(
      title: 'Ir a Central de Ajuda?',
      body: 'Você será redirecionado para o site. Deseja continuar?',
      confirmText: 'Visitar site',
      cancelText: 'Quero ficar',
      cancelBackgroundColor: AppTheme.colors.errorOpacity,
      cancelTextColor: AppTheme.colors.primary,
      onConfirm: () => openBrowseLink('https://google.com'),
    );
  }

  Future toLogoff() async {
    final shouldNavigate = await SlideUp().dialog(
      title: 'Já vai indo?',
      body: 'Ao clicar em sair você será deslogado',
      confirmText: 'Sair',
      cancelText: 'Quero ficar',
      cancelBackgroundColor: AppTheme.colors.errorOpacity,
      cancelTextColor: AppTheme.colors.primary,
    );

    if (shouldNavigate != null && shouldNavigate) {
      await Get.offAllNamed(LoginModule.path);
    }
  }
}
