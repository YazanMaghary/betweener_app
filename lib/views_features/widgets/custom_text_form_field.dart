import 'package:flutter/material.dart';
import 'package:betweener_app/styles.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final String? hint;
  final String? initialValue;
  final TextEditingController? controller;
  final bool password;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final Iterable<String>? autofillHints;
  const CustomTextFormField(
      {super.key,
      required this.label,
      this.controller,
      this.hint,
      this.password = false,
      this.keyboardType,
      this.validator,
      this.autofillHints,
      this.initialValue});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: Styles.textStyle14,
        ),
        const SizedBox(
          height: 12,
        ),
        TextFormField(
          initialValue: initialValue,
          keyboardType: keyboardType,
          controller: controller,
          validator: validator,
          autofillHints: autofillHints,
          obscureText: password,
          enableSuggestions: password == true ? false : true,
          autocorrect: password == true ? false : true,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
            hintText: hint,
            border: Styles.primaryRoundedOutlineInputBorder,
            focusedBorder: Styles.primaryRoundedOutlineInputBorder,
            errorBorder: Styles.primaryRoundedOutlineInputBorder,
            enabledBorder: Styles.primaryRoundedOutlineInputBorder,
            disabledBorder: Styles.primaryRoundedOutlineInputBorder,
          ),
        ),
      ],
    );
  }
}
