import 'package:flutter/widgets.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class PhoneFormatter extends MaskTextInputFormatter {
  static final phonePattern = '(##) # ####-####';
  static final residencePattern = '(##) ####-####';

  PhoneFormatter()
      : super(
          mask: residencePattern,
          filter: {'#': RegExp(r'[0-9]')},
        );

  @override
  TextEditingValue formatEditUpdate(TextEditingValue oldValue, TextEditingValue newValue) {
    if (newValue.text.length >= 6) {
      if (newValue.text[5] == '9' && getMask() != phonePattern) {
        updateMask(mask: phonePattern);
      } else if (newValue.text[5] != '9' && getMask() != residencePattern) {
        updateMask(mask: residencePattern);
      }
    }

    return super.formatEditUpdate(oldValue, newValue);
  }
}
