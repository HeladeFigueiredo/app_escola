import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SearchInput extends StatelessWidget {
  final void Function(String) onSearch;
  final TextEditingController controller;

  SearchInput({
    required this.onSearch,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: .2.sh),
      decoration: BoxDecoration(
        color: AppTheme.colors.white,
        borderRadius: BorderRadius.circular(40.r),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(bottom: 4.h, top: 4.h, left: 22.w),
              child: TextField(
                onChanged: onSearch,
                controller: controller,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 0.h),
                  hintText: 'Pesquisar',
                  border: InputBorder.none,
                  hintStyle: AppTheme.textStyles.posLabel.copyWith(
                    color: AppTheme.colors.primaryDark,
                  ),
                ),
                style: AppTheme.textStyles.label.copyWith(
                  color: AppTheme.colors.primary,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Padding(
              padding: EdgeInsets.only(left: 8.w, right: 8.w),
              child: Container(
                height: 0.042.sh,
                width: 0.095.sw,
                decoration: BoxDecoration(
                  color: AppTheme.colors.whiteLight,
                  borderRadius: BorderRadius.circular(100.r),
                ),
                child: ImageIcon(
                  AssetImage('assets/icons/search.png'),
                  color: AppTheme.colors.primary,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
