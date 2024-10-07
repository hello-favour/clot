import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const AppButton({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height * 0.06,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primaryColor,
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: AppColors.whiteColor,
              ),
        ),
      ),
    );
  }
}
