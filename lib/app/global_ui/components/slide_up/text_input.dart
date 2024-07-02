import 'package:app_uninter/app/global_ui/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextInput extends StatefulWidget {
  final TextEditingController controller;
  final bool isPassword;
  final bool isDisabled;
  final List<TextInputFormatter> formatters;
  final TextInputType? type;
  final String? Function(String?)? validation;
  final String? Function(String?)? onChange;
  final double? paddingHorizontal;
  final int? maxSize;
  final int? maxLines;

  TextInput({
    required this.controller,
    this.isDisabled = false,
    this.isPassword = false,
    this.type = TextInputType.text,
    this.validation,
    this.onChange,
    this.paddingHorizontal,
    this.maxSize,
    this.maxLines,
    this.formatters = const [],
  });

  @override
  State<TextInput> createState() => _BorderInputState();
}

class _BorderInputState extends State<TextInput> {
  bool isWithError = false;
  late bool isHidden;

  @override
  void initState() {
    super.initState();
    isHidden = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(maxHeight: .2.sh),
      padding: EdgeInsets.symmetric(horizontal: widget.paddingHorizontal ?? 20.w),
      child: TextFormField(
        readOnly: widget.isDisabled,
        keyboardType: widget.type ?? TextInputType.text,
        controller: widget.controller,
        obscureText: isHidden,
        cursorColor: AppTheme.colors.white,
        inputFormatters: widget.formatters,
        onChanged: widget.onChange,
        maxLength: widget.maxSize,
        maxLines: widget.maxLines,
        validator: (value) {
          String? result = (value?.isEmpty ?? true) ? 'Campo obrigatório' : null;

          if (widget.validation != null) {
            result = widget.validation!(value);
          }

          setState(() => isWithError = result != null);
          return result;
        },
        decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: widget.maxLines != null ? 20.h : 0,
          ),
          filled: true,
          fillColor: AppTheme.colors.white,
          hintText: 'Escreva uma mensagem',
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(16.r), // NOTE: 40.w
          ),
          hintStyle: AppTheme.textStyles.posLabel.copyWith(
            color: AppTheme.colors.black,
          ),
        ),
        style: AppTheme.textStyles.posLabel.copyWith(
          color: AppTheme.colors.black,
        ),
      ),
    );
  }
}
