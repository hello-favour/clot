import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  final String? title;
  final VoidCallback onTap;
  final Row? row;
  const AppButton({
    super.key,
    this.title,
    required this.onTap,
    this.row,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height * 0.06,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: AppColors.primaryColor,
        ),
        child: row ??
            Text(
              title!,
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: AppColors.whiteColor,
                  ),
            ),
      ),
    );
  }
}
