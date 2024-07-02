part of 'index.dart';

mixin FormSup {
  /// Displays a form that will take 85% of the screen as maxHeight.
  /// The size of the widget will match the total form size, but once it reaches 85% it'll activate a scroll
  ///
  /// * Requires a [title] to be displayed.
  /// * Requires a [form] to be displayed.
  /// * Requires a [onSubmit] as submit action. This submit action must return a [bool], on which validates and closes the form if it's `true`
  /// * Optional [withTopMargin] which displays a top margin or not. Defaults to `true`
  ///
  /// This function don't need to call `SlideUp.close()` since it's being handled by the [onSubmit] function.
  Future<dynamic> form({
    required Widget form,
    required Future<({bool shouldClose, dynamic returnedValue})?> Function() onSubmit,
    String? title,
    String confirmButtonText = 'Cadastrar',
    bool withCleanButton = false,
    Function? onCancel,
  }) {
    return _defaultBottomSup(
      isDismissible: false,
      enableDrag: false,
      scrollControlled: true,
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: .53.sh),
        child: _defaultWidgetWithHeader(title: title, children: [
          Container(
            child: form,
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              if (withCleanButton)
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      textValue: 'Limpar filtros',
                      minWidth: 0.45.sw,
                      padding: helpers.paddingAll(12),
                      border: false,
                      color: AppTheme.colors.errorOpacity,
                      textColor: AppTheme.colors.error,
                      onTouchCallback: () {
                        _closeSup(returnedValue: false);
                        onCancel?.call();
                      },
                    ),
                    Button(
                      textValue: 'Filtrar',
                      onTouchCallback: () async {
                        final success = await onSubmit();
                        if (success != null && success.shouldClose) {
                          _closeSup(returnedValue: success.returnedValue);
                        }
                      },
                      color: AppTheme.colors.secondary,
                      textColor: AppTheme.colors.white,
                      minWidth: 0.45.sw,
                      padding: helpers.paddingAll(12),
                    ),
                  ],
                ),
            ],
          ),
        ]),
      ),
    );
  }
}
