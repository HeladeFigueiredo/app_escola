part of 'index.dart';

mixin LoaderSup {
  Future loader({
    String? title,
    String? body,
  }) {
    return _defaultBottomSup(
      isDismissible: false,
      enableDrag: false,
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: .3.sh),
        child: SizedBox(
          width: 1.sw,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 12.h),
                child: Container(
                  height: 130.h,
                  child: LoadingIndicator(
                    indicatorType: Indicator.ballClipRotatePulse,
                    colors: [AppTheme.colors.primary, AppTheme.colors.secondary],
                    strokeWidth: 4,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(bottom: 8.h),
                child: Text(
                  title ?? 'Registrando novo usuário',
                  textAlign: TextAlign.center,
                  style: AppTheme.textStyles.title.copyWith(
                    color: AppTheme.colors.primaryDark,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Text(
                body ?? 'Aguarde um momento...',
                textAlign: TextAlign.center,
                style: AppTheme.textStyles.prePosLabel.copyWith(
                  color: AppTheme.colors.primaryLight,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
