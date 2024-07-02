import 'package:app_uninter/app/global_ui/components/ui_loader.dart';
import 'package:flutter/material.dart';

class LoadingView extends StatelessWidget {
  final List<Widget> items;
  final bool isLoading;
  final MainAxisAlignment mainAlignment;
  final CrossAxisAlignment crossAlignment;

  const LoadingView({
    required this.items,
    required this.isLoading,
    this.mainAlignment = MainAxisAlignment.start,
    this.crossAlignment = CrossAxisAlignment.start,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UiLoader(
      simpleView: true,
      isLoading: isLoading,
      child: Column(
        mainAxisAlignment: mainAlignment,
        crossAxisAlignment: crossAlignment,
        mainAxisSize: MainAxisSize.max,
        children: items,
      ),
    );
  }
}
