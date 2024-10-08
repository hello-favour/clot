import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class NotificationCard extends StatelessWidget {
  const NotificationCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.10,
        padding: const EdgeInsets.only(right: 10, left: 10),
        color: AppColors.greyColor,
        child: Row(
          children: [
            const Icon(Iconsax.notification),
            const Gap(10),
            Expanded(
              child: Text(
                "Gilbert, Thank you for shopping with us we have canceled order #24568.",
                style: Theme.of(context).textTheme.bodyLarge,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
