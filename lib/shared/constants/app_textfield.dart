import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String label;
  final TextEditingController controller;
  final bool obscure;
  final TextInputType inputType;
  const AppTextField({
    super.key,
    required this.label,
    required this.controller,
    required this.inputType,
    this.obscure = false,
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
          label: Text(label),
          labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: AppColors.greyText,
              ),
          border: InputBorder.none,
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        ),
      ),
    );
  }
}
