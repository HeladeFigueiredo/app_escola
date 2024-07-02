import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// TODO: Transformar para Stateless e Procurar entradas dentro do código, caso não esteja em um Obx, precisa ser adicionado.
class Dropdown<T> extends StatefulWidget {
  final String title;
  final List<DropdownMenuEntry<T>> items;
  final T? selectedEntry;
  final void Function(T?) onSelected;
  final bool isRequired;

  Dropdown({
    required this.title,
    required this.items,
    required this.selectedEntry,
    required this.onSelected,
    this.isRequired = true,
  });

  @override
  _DropdownState<T> createState() => _DropdownState<T>();
}

class _DropdownState<T> extends State<Dropdown<T>> {
  T? _selectedEntry;

  @override
  void initState() {
    _selectedEntry = widget.selectedEntry;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: Ao transformar em stateless, trocar referências de _selectedEntry para selectedEntry
    return FormField<T>(
      initialValue: _selectedEntry,
      validator: (_) {
        if (!widget.isRequired || _selectedEntry != null) {
          return null;
        }

        return 'Campo obrigatório';
      },
      builder: (fieldState) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            renderDropdown(),
            if (!fieldState.isValid && fieldState.errorText != null)
              Padding(
                padding: EdgeInsets.only(left: 28.w, top: 6.h),
                child: Text(
                  fieldState.errorText!,
                  style: AppTheme.textStyles.prePosLabel.copyWith(
                    color: AppTheme.colors.black,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }

  Widget renderDropdown() {
    return DropdownMenu<T>(
      width: 0.9.sw,
      menuHeight: 0.165.sh,
      textStyle: AppTheme.textStyles.posLabel.copyWith(
        color: AppTheme.colors.black,
      ),
      hintText: widget.title,
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppTheme.colors.white,
        contentPadding: EdgeInsets.only(left: 28.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.r),
          borderSide: BorderSide.none,
        ),
      ),
      menuStyle: MenuStyle(
        shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.r))),
        padding: MaterialStateProperty.all(EdgeInsets.symmetric(horizontal: 15.w)),
      ),
      initialSelection: _selectedEntry,
      onSelected: (entry) {
        setState(() {
          _selectedEntry = entry;
        });
        widget.onSelected(entry);
      },
      dropdownMenuEntries: widget.items,
    );
  }
}
