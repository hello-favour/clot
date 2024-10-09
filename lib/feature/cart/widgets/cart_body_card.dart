import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartBodyCard extends StatelessWidget {
  const CartBodyCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.09,
        padding: const EdgeInsets.all(10),
        color: AppColors.greyColor,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(AppImages.image2),
            const Gap(10),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          "Men's Harrington Jacket",
                          style: Theme.of(context).textTheme.bodySmall,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const Spacer(),
                      Text(
                        "\$148",
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ],
                  ),
                  const Gap(5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Text(
                              "Size-M",
                              style: Theme.of(context).textTheme.bodySmall,
                              overflow: TextOverflow.ellipsis,
                            ),
                            const Gap(10),
                            Text(
                              "Color-Lemon",
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.primaryColor,
                              child: Icon(
                                Icons.add,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          ),
                          const Gap(10),
                          GestureDetector(
                            onTap: () {},
                            child: const CircleAvatar(
                              radius: 12,
                              backgroundColor: AppColors.primaryColor,
                              child: Icon(
                                Icons.remove,
                                color: AppColors.whiteColor,
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
