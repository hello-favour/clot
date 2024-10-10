import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/payment/widgets/payment_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class WishListScreen extends ConsumerWidget {
  const WishListScreen({super.key});

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
              title: Text(
                "Wishlist",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            PaymentCard(
              height: MediaQuery.of(context).size.height * 0.08,
              title: Text(
                "My Favorite",
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
              subTitle: Text(
                "12 Products",
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
              check: true,
            ),
            const Gap(10),
            PaymentCard(
              height: MediaQuery.of(context).size.height * 0.08,
              title: Text(
                "My Order",
                style: Theme.of(context).textTheme.bodyLarge,
                overflow: TextOverflow.ellipsis,
              ),
              subTitle: Text(
                "4 Products",
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
              check: true,
            ),
          ],
        ),
      ),
    );
  }
}
