import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/feature/Screens/home/widgets/product_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class SearchProductScreen extends ConsumerWidget {
  const SearchProductScreen({super.key});

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
              title: ClipRRect(
                borderRadius: BorderRadius.circular(99),
                child: SizedBox(
                  width: size.width * 0.75,
                  child: AppTextField(
                    label: "Search",
                    icon: const Icon(Iconsax.search_favorite),
                    suffixIcon: const Icon(Iconsax.close_circle),
                    controller: TextEditingController(),
                    inputType: TextInputType.text,
                  ),
                ),
              ),
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
                      onTap: () {
                        Navigator.pushNamed(context, AppRoutes.searchDetail);
                      },
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
