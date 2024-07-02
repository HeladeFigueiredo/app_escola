part of 'index.dart';

mixin DialogSup {
  /// Displays a form that will take 80% of the screen as maxHeight.
  /// The size of the widget will match the total form size, but once it reaches 80% it'll activate a scroll
  ///
  /// * Requires a [title] to be displayed.
  /// * Requires a [form] to be displayed.
  /// * Requires a [onSubmit] as submit action. This submit action must return a [bool], on which validates and closes the form if it's `true`
  ///
  /// This function don't need to call `SlideUp.close()` since it's already being handled on each button.
  Future dialog({
    required String title,
    required String body,
    required String confirmText,
    Function? onConfirm,
    Color? titleTextColor,
    Color? confirmBackgroundColor,
    Color? confirmTextColor,
    Function? onCancel,
    Color? cancelBackgroundColor,
    Color? cancelTextColor,
    String cancelText = 'Cancelar',
    bool withoutCancel = false,
    TextStyle bodyStyle = const TextStyle(),
  }) {
    return _defaultBottomSup(
      isDismissible: false,
      enableDrag: false,
      body: ConstrainedBox(
        constraints: BoxConstraints(maxHeight: .8.sh),
        child: SizedBox(
          width: 1.sw,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 40.h, bottom: 10.h, left: 25.w),
                        child: Text(
                          title,
                          style: AppTheme.textStyles.title.copyWith(
                            color: titleTextColor ?? AppTheme.colors.primary,
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 25.w, right: 30.w),
                    child: Text(
                      body,
                      textAlign: TextAlign.justify,
                      style: AppTheme.textStyles.label.copyWith(
                        color: AppTheme.colors.black,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                  ),
                ],
              ),
              renderButtons(
                withoutCancel,
                confirmText,
                onConfirm,
                cancelText,
                cancelBackgroundColor,
                cancelTextColor,
                onCancel,
                confirmBackgroundColor,
                confirmTextColor,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget renderButtons(
    bool withoutCancel,
    String confirmText,
    Function? onConfirm,
    String cancelText,
    Color? cancelBackgroundColor,
    Color? cancelTextColor,
    Function? onCancel,
    Color? confirmBackgroundColor,
    Color? confirmTextColor,
  ) {
    if (withoutCancel) {
      return Button(
        textValue: confirmText,
        onTouchCallback: () {
          _closeSup(returnedValue: true);
          onConfirm?.call();
        },
        color: confirmBackgroundColor,
        textColor: confirmTextColor,
        padding: helpers.paddingAll(15),
        margin: EdgeInsets.only(top: 25.h, bottom: 60.h),
      );
    }

    return Padding(
      padding: EdgeInsets.only(top: 25.h, bottom: 60.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Button(
            textValue: cancelText,
            minWidth: 0.45.sw,
            padding: Helpers().paddingAll(12),
            border: false,
            color: cancelBackgroundColor,
            textColor: cancelTextColor,
            onTouchCallback: () {
              _closeSup(returnedValue: false);
              onCancel?.call();
            },
          ),
          Button(
            textValue: confirmText,
            onTouchCallback: () {
              _closeSup(returnedValue: true);
              onConfirm?.call();
            },
            color: confirmBackgroundColor,
            textColor: confirmTextColor,
            minWidth: 0.45.sw,
            padding: Helpers().paddingAll(12),
          ),
        ],
      ),
    );
  }
}
