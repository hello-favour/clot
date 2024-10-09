import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/search/widgets/search_card.dart';
import 'package:clot/feature/search/widgets/select_color.dart';
import 'package:clot/feature/search/widgets/select_size.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class SearchDetailScreen extends ConsumerWidget {
  const SearchDetailScreen({super.key});

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
              leadingIcon: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Iconsax.arrow_left),
              ),
              actions: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: const Icon(
                    Icons.favorite,
                    color: AppColors.blackColor,
                  ),
                ),
              ],
            ),
            const Gap(20),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ...List.generate(
                    5,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 15),
                      child: Container(
                        height: size.height * 0.30,
                        width: size.width * 0.50,
                        decoration: const BoxDecoration(
                          color: AppColors.greyColor,
                          image: DecorationImage(
                            image: AssetImage(
                              AppImages.image2,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Text(
              "Men's Harrison Jacket",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(5),
            Text(
              "\$148",
              style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                    color: AppColors.primaryColor,
                  ),
            ),
            const Gap(20),
            SearchCard(
              title: 'Size',
              row: Row(
                children: [
                  Text(
                    "S",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isDismissible: false,
                        barrierColor: AppColors.whiteColor.withOpacity(0.5),
                        context: context,
                        builder: (BuildContext index) => const SelectSize(),
                      );
                    },
                    child: const Icon(
                      Iconsax.arrow_down_14,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            SearchCard(
              title: 'Color',
              row: Row(
                children: [
                  const CircleAvatar(
                    radius: 10,
                    backgroundColor: AppColors.yellowColor,
                  ),
                  const Gap(10),
                  GestureDetector(
                    onTap: () {
                      showModalBottomSheet(
                        isDismissible: false,
                        barrierColor: AppColors.whiteColor.withOpacity(0.5),
                        context: context,
                        builder: (BuildContext index) => const SelectColor(),
                      );
                    },
                    child: const Icon(
                      Iconsax.arrow_down_14,
                      color: AppColors.blackColor,
                    ),
                  ),
                ],
              ),
            ),
            const Gap(10),
            SearchCard(
              title: 'Quantity',
              row: Row(
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.primaryColor,
                      child: Center(
                        child: Icon(
                          Icons.add,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                  const Gap(10),
                  Text(
                    "1",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  GestureDetector(
                    onTap: () {},
                    child: const CircleAvatar(
                      radius: 20,
                      backgroundColor: AppColors.primaryColor,
                      child: Center(
                        child: Icon(
                          Icons.remove,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Gap(20),
            Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vestibulum facilisis elit eu dapibus tincidunt. Donec ligula lectus, varius et malesuada eu, finibu",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            Gap(size.height * 0.10),
            AppButton(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$148",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    "Add to Bag",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
