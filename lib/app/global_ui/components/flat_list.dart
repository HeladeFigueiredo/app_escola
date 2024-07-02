import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:app_uninter/app/global_ui/components/ui_loader.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// TODO: REMOVER ESTE COMPONENTE - NÃO ESTÁ SENDO USADO

class FlatList extends StatelessWidget {
  final List<Widget> items;
  final bool isLoading;

  final Future<void> Function()? onRefresh;
  final Widget? header;

  const FlatList({
    required this.items,
    required this.isLoading,
    this.onRefresh,
    this.header,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return UiLoader(
      isLoading: isLoading,
      child: onRefresh == null
          ? renderScrollable()
          : RefreshIndicator(
              onRefresh: onRefresh!,
              child: renderScrollable(),
            ),
    );
  }

  List<Widget> renderItemsContent() {
    if (items.isNotEmpty) {
      return items;
    }

    return [
      SizedBox(
        height: 80.h,
        child: Center(
          child: Text(
            'Não foram encontrados registros',
            textAlign: TextAlign.center,
            style: AppTheme.textStyles.label,
          ),
        ),
      )
    ];
  }

  Widget renderScrollable() {
    return SingleChildScrollView(
      primary: true,
      physics: const AlwaysScrollableScrollPhysics(),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          header ?? const SizedBox.shrink(),
          ...renderItemsContent(),
        ],
      ),
    );
  }
}
