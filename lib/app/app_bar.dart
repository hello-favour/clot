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
  final Widget? leadingIcon;
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
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.greyColor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(99)),
                        border: Border.all(color: AppColors.greyColor),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(99),
                        child: leadingIcon,
                      ),
                    ),
                  )
                : const SizedBox.shrink(),

        // Title
        Expanded(
          child: Center(
            child: title ?? const SizedBox.shrink(),
          ),
        ),

        // Actions
        Row(
          children: actions?.map((action) {
                return Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    color: AppColors.primaryColor,
                    borderRadius: const BorderRadius.all(Radius.circular(99)),
                    border: Border.all(color: AppColors.greyColor),
                  ),
                  child: action,
                );
              }).toList() ??
              [],
        ),
      ],
    );
  }
}
