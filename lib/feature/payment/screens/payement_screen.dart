import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/payment/widgets/payment_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class PaymentScreen extends ConsumerWidget {
  const PaymentScreen({super.key});

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
                "Payment",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            Text(
              "Cards",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(15),
            PaymentCard(
              title: Row(
                children: [
                  Text(
                    "**** 4187",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  Image.asset(AppImages.masterCard),
                ],
              ),
              check: true,
            ),
            const Gap(10),
            PaymentCard(
              title: Row(
                children: [
                  Text(
                    "**** 938",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  Image.asset(AppImages.masterCard),
                ],
              ),
              check: true,
            ),
            const Gap(25),
            Text(
              "Paypal",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(15),
            PaymentCard(
              title: Row(
                children: [
                  Text(
                    "Cloth@gmail.com",
                    style: Theme.of(context).textTheme.bodyLarge,
                    overflow: TextOverflow.ellipsis,
                  ),
                  const Gap(10),
                  Image.asset(AppImages.masterCard),
                ],
              ),
              check: true,
            ),
          ],
        ),
      ),
    );
  }
}
