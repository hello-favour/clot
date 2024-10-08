import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OrderCard extends StatelessWidget {
  const OrderCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * 0.08,
          padding: const EdgeInsets.only(right: 10, left: 10),
          color: AppColors.greyColor,
          alignment: Alignment.center,
          child: ListTile(
            contentPadding: EdgeInsets.zero,
            leading: const Icon(Iconsax.receipt),
            title: Text(
              "order #24568",
              style: Theme.of(context).textTheme.headlineSmall,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: Text(
              "2 items",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.greyText.withOpacity(0.5),
                  ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            trailing: const Icon(Iconsax.notification),
          ),
        ),
      ),
    );
  }
}
