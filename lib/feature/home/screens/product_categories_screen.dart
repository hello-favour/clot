import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/home/widgets/product_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ProductCategoriesScreen extends ConsumerWidget {
  const ProductCategoriesScreen({super.key});

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
                  child: const Icon(Iconsax.arrow_left)),
            ),
            const Gap(20),
            Text(
              "Hoodies (240)",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(20),
            Expanded(
              child: GridView.builder(
                padding: EdgeInsets.zero,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ProductCard(
                      onPressed: () {},
                      imageUrl: AppImages.image3,
                      productName: "Fleece Skate Hoodie",
                      price: 110.00,
                      onTap: () {},
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
