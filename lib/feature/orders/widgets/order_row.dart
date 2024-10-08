import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class OrderRow extends StatelessWidget {
  final String keyText;
  final String valueText;
  final bool checkColor;
  const OrderRow({
    super.key,
    required this.keyText,
    required this.valueText,
    this.checkColor = true,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 14,
              backgroundColor:
                  checkColor ? AppColors.primaryColor : AppColors.blackColor,
              child: const Icon(
                Iconsax.tick_circle,
                color: AppColors.whiteColor,
              ),
            ),
            const Gap(10),
            Text(
              keyText,
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    color: checkColor
                        ? AppColors.greyText
                        : AppColors.primaryColor,
                  ),
            ),
          ],
        ),
        Text(
          valueText,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: checkColor ? AppColors.greyText : AppColors.primaryColor,
              ),
        ),
      ],
    );
  }
}
