import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/feature/cart/widgets/cart_row.dart';
import 'package:clot/feature/cart/widgets/checkout_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class CheckOutScreen extends ConsumerWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            MyCustomAppBar(
              leadingIcon: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Iconsax.arrow_left),
              ),
              title: Text(
                "Checkout",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            CheckOutCard(
              onTap: () {},
              title: "Shipping Address",
              text: "Lorem ipsum dolor sit amet, consectetur adipiscing.",
            ),
            const Gap(10),
            CheckOutCard(
              onTap: () {},
              title: "Payment Method",
              row: Row(
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
            ),
            const Spacer(),
            const CartRow(
              keyText: 'Subtotal',
              valueText: '200',
            ),
            const Gap(15),
            const CartRow(
              keyText: 'Shipping Cost',
              valueText: '8.00',
            ),
            const Gap(15),
            const CartRow(
              keyText: 'Tax',
              valueText: '0.00',
            ),
            const Gap(15),
            const CartRow(
              keyText: 'Total',
              valueText: '208',
            ),
            Gap(size.height * 0.08),
            AppButton(
              row: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$208",
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                  Text(
                    "Place Order",
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: AppColors.whiteColor,
                        ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.orderSuccess);
              },
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
