import 'package:clot/app/routes.dart';
import 'package:clot/feature/profile/widgets/profile_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.09),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.greyColor,
              backgroundImage: AssetImage(
                AppImages.image4,
              ),
            ),
            Gap(size.height * 0.03),
            ProfileCard(
              height: size.height * 0.09,
              check: false,
              title: "Gilbert Jones",
              subTitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Gilbertjones001@gmail.com",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.greyText.withOpacity(0.5),
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(
                              context, AppRoutes.addAddressScreen);
                        },
                        child: Text(
                          "Edit",
                          style:
                              Theme.of(context).textTheme.bodyLarge?.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "121-224-7890",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.greyText.withOpacity(0.5),
                        ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            ProfileCard(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.addressScreen);
              },
              title: "Address",
            ),
            const Gap(5),
            ProfileCard(
              onTap: () {},
              title: "Wishlist",
            ),
            const Gap(5),
            ProfileCard(
              onTap: () {},
              title: "Payment",
            ),
            const Gap(5),
            ProfileCard(
              onTap: () {},
              title: "Help",
            ),
            const Gap(5),
            ProfileCard(
              onTap: () {},
              title: "Support",
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Sign Out",
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      color: AppColors.redColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
