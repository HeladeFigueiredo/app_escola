library slide_up;

import 'package:app_uninter/app/data/helpers/index.dart';
import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:loading_indicator/loading_indicator.dart';

part 'dialog_sup.dart';
part 'form_sup.dart';
part 'loader_sup.dart';

// ######################################## //
// Externalized accessible class            //
// ######################################## //

final Helpers helpers = Helpers();

class SlideUp with DialogSup, FormSup, LoaderSup {
  /// Closes the SlideUp ONLY if the bottomSheet is currently opened
  ///
  /// * Optionally you can provide a [returnedValue] to be returned after close
  static void close({dynamic returnedValue}) => _closeSup(returnedValue: returnedValue);
}

// ######################################## //
// Common functions used for both sups      //
// ######################################## //

/// Closes the SlideUp ONLY if the bottomSheet is currently opened
dynamic _closeSup({dynamic returnedValue}) async {
  if (Get.isBottomSheetOpen ?? false) {
    return Get.back(result: returnedValue);
  }
}

BorderRadius get _defaultBorderRadius => const BorderRadius.only(
      topLeft: Radius.circular(40),
      topRight: Radius.circular(40),
    );

/// Default configuration for bottomSheets
Future _defaultBottomSup({
  required Widget body,
  required bool isDismissible,
  required bool enableDrag,
  bool scrollControlled = false,
  bool disableBack = true,
}) =>
    Get.bottomSheet(
      PopScope(onPopInvoked: (_) async => !disableBack, canPop: !disableBack, child: body),
      elevation: 40,
      isDismissible: isDismissible,
      isScrollControlled: scrollControlled,
      enableDrag: enableDrag,
      backgroundColor: Colors.white,
      barrierColor: Colors.black54,
      useRootNavigator: true,
      shape: RoundedRectangleBorder(borderRadius: _defaultBorderRadius),
    );

/// Default configuration for bottomSheets with slivers
Widget _defaultWidgetWithHeader({
  required List<Widget> children,
  String? title,
}) {
  return ClipRRect(
    borderRadius: _defaultBorderRadius,
    child: ColoredBox(
      color: AppTheme.colors.whiteDark,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 20.h, right: 22.w),
                child: InkWell(
                  onTap: _closeSup,
                  child: ImageIcon(
                    AssetImage('assets/icons/close.png'),
                    color: AppTheme.colors.primary,
                  ),
                ),
              ),
            ],
          ),
          Column(children: children),
        ],
      ),
    ),
  );
}
