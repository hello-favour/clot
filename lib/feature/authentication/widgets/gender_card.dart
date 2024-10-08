import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class GenderCard extends StatelessWidget {
  final Size size;
  final String title;
  final VoidCallback onTap;
  final bool genderOption;
  const GenderCard({
    super.key,
    required this.size,
    required this.title,
    required this.onTap,
    this.genderOption = true,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: size.width,
        height: size.height * 0.06,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: genderOption ? AppColors.primaryColor : AppColors.greyColor),
        child: Text(
          title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color:
                  genderOption ? AppColors.whiteColor : AppColors.blackColor),
        ),
      ),
    );
  }
}
