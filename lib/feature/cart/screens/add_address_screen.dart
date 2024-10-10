import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class AddAddressScreen extends ConsumerWidget {
  const AddAddressScreen({super.key});

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
            AppTextField(
              label: "Shipping Address",
              controller: TextEditingController(),
              inputType: TextInputType.text,
            ),
            const Spacer(),
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
