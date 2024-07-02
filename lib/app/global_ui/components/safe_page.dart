import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SafePage extends StatelessWidget {
  final Widget child;
  final double? heightBlue;
  final double? heightWhite;
  final bool? preventResize;

  const SafePage({
    required this.child,
    this.heightBlue,
    this.heightWhite,
    this.preventResize,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      primary: true,
      resizeToAvoidBottomInset: !(preventResize ?? false),
      body: SizedBox(
        height: 1.sh,
        child: Stack(
          children: [
            Container(
              height: heightBlue ?? .5.sh,
              decoration: BoxDecoration(
                color: AppTheme.colors.primaryDark,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: heightWhite ?? .5.sh,
                color: AppTheme.colors.whiteDark,
              ),
            ),
            SafeArea(child: child),
          ],
        ),
      ),
    );
  }
}
