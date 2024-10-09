import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscure;
  final Widget? icon, suffixIcon;
  final TextInputType inputType;
  const AppTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.inputType,
    this.obscure = false,
    this.suffixIcon,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.greyColor,
      child: TextField(
        obscureText: obscure,
        keyboardType: inputType,
        controller: controller,
        decoration: InputDecoration(
          prefixIcon: icon,
          label: Text(label),
          labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.greyText,
              ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          suffixIcon: suffixIcon,
          focusedBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}
