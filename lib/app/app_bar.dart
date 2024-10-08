import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyCustomAppBar extends StatelessWidget {
  const MyCustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = false,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Leading icon or back button
        showBackArrow
            ? IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Iconsax.arrow_left,
                  color: AppColors.blackColor,
                ),
              )
            : leadingIcon != null
                ? GestureDetector(
                    onTap: leadingOnPressed,
                    child: Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(99)),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      child: Icon(
                        leadingIcon,
                        size: 18,
                        color: AppColors.blackColor,
                      ),
                    ),
                  )
                : const SizedBox.shrink(), // Empty box if no leading icon

        // Title
        Expanded(
          child: Center(
            child: title ?? const SizedBox.shrink(), // Center title
          ),
        ),

        // Actions
        Row(
          children: actions?.map((action) {
                return Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: AppColors.greyColor,
                    borderRadius: const BorderRadius.all(Radius.circular(99)),
                    border: Border.all(color: AppColors.greyColor),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      // Handle action tap if specific onTap function is not provided
                      print('Action tapped!');
                    },
                    child: action,
                  ),
                );
              }).toList() ??
              [],
        ),
      ],
    );
  }
}
