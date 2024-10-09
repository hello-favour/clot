import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/feature/home/widgets/product_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:clot/feature/home/widgets/categories_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyCustomAppBar(
              leadingIcon: Image.asset(
                height: 30,
                width: 30,
                AppImages.image1,
                fit: BoxFit.cover,
              ),
              title: Container(
                height: 40,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(99),
                  color: AppColors.greyColor,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Men",
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                            color: AppColors.blackColor,
                          ),
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {},
                      icon: const Icon(
                        Iconsax.arrow_down_14,
                        color: AppColors.blackColor,
                      ),
                    ),
                  ],
                ),
              ),
              actions: [
                GestureDetector(
                  child: const Icon(
                    Iconsax.bag_2,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            const Gap(20),
            Expanded(
              child: ListView(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(99),
                    child: AppTextField(
                      label: "Search",
                      icon: const Icon(Iconsax.search_favorite),
                      controller: TextEditingController(),
                      inputType: TextInputType.text,
                    ),
                  ),
                  const Gap(20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Categories",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.seeAll);
                        },
                        child: Text(
                          "See All",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  const Gap(3),
                  const CategoriesCard(),
                  Gap(size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Selling",
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.seeAll);
                        },
                        child: Text(
                          "See All",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Gap(size.height * 0.01),
                  SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ProductCard(
                            onPressed: () {},
                            imageUrl: AppImages.image3,
                            productName: "Max Cirro Men's Slides",
                            price: 55.00,
                            discountPrice: 100.97,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.productCategory);
                            },
                          ),
                        );
                      },
                    ),
                  ),
                  Gap(size.height * 0.02),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New In",
                        style:
                            Theme.of(context).textTheme.headlineSmall?.copyWith(
                                  color: AppColors.primaryColor,
                                ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pushNamed(context, AppRoutes.seeAll);
                        },
                        child: Text(
                          "See All",
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    ],
                  ),
                  Gap(size.height * 0.01),
                  SizedBox(
                    height: 300,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: ProductCard(
                            onPressed: () {},
                            imageUrl: AppImages.slipper,
                            productName: 'Men\'s Harrington Jacket',
                            price: 148.00,
                            discountPrice: null,
                            onTap: () {
                              Navigator.pushNamed(
                                  context, AppRoutes.productCategory);
                            },
                          ),
                        );
                      },
                    ),
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
