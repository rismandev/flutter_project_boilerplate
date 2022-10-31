import 'package:flutter/material.dart';
import 'package:flutter_project_boilerplate/core/theme/theme_values.dart';

class WideTextFieldWidget extends StatelessWidget {
  const WideTextFieldWidget({
    super.key,
    this.hintText,
    this.width,
    this.height,
    this.controller,
    this.focusNode,
    this.keyboardType,
    this.prefixIcon,
    this.suffixIcon,
    this.onChanged,
    this.enabled,
  });

  final String? hintText;
  final double? width;
  final double? height;
  final bool? enabled;

  final TextEditingController? controller;
  final FocusNode? focusNode;

  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final TextInputType? keyboardType;

  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    final enabled = this.enabled ?? true;

    return Container(
      width: width ?? double.infinity,
      height: height,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
      child: TextField(
        controller: controller,
        focusNode: focusNode,
        keyboardType: keyboardType,
        onChanged: onChanged,
        enabled: enabled,
        onAppPrivateCommand: (p0, p1) {},
        style: textTheme.labelMedium,
        decoration: InputDecoration(
          hintText: hintText ?? "Enter text",
          hintStyle: textTheme.labelMedium?.copyWith(color: lightSecondaryTxt),
          counterText: "",
          counter: const Offstage(),
          contentPadding: const EdgeInsets.fromLTRB(12, 4, 12, 4),
          prefixIcon: prefixIcon,
          suffixIcon: suffixIcon,
          filled: true,
          fillColor:
              enabled ? Colors.transparent : lightPrimaryBg.withOpacity(0.25),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(
              color: lightPrimaryBorder,
              width: 1.25,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(6),
            borderSide: const BorderSide(color: colorPrimary, width: 1.25),
          ),
        ),
      ),
    );
  }
}
