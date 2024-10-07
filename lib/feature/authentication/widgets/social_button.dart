import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';

class SocialButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  const SocialButton({super.key, required this.title, required this.onTap});

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
          color: AppColors.greyColor,
        ),
        child: Row(
          children: [
            Image.asset(
              AppImages.googleIcon,
              height: 30.0,
              width: 30.0,
              fit: BoxFit.cover,
            ),
            const Spacer(),
            Text(
              title,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: AppColors.blackColor,
                  ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
