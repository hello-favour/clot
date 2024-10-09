import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/cart/widgets/cart_body_card.dart';
import 'package:clot/feature/cart/widgets/cart_row.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class CartScreen extends ConsumerWidget {
  const CartScreen({super.key});

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
                "Cart",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Remove All",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
            const Gap(20),
            SingleChildScrollView(
              child: Column(
                children: [
                  ...List.generate(
                    3,
                    (index) => const Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: CartBodyCard(),
                    ),
                  ),
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
              onTap: () {},
              title: "Checkout",
            ),
            const Gap(20),
          ],
        ),
      ),
    );
  }
}
