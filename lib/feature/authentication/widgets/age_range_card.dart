import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class AgeRangeCard extends StatelessWidget {
  const AgeRangeCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.height * 0.06,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Age Range",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.blackColor,
                ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.arrow_down_14,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
