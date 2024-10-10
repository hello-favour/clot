import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class AddCardScreen extends ConsumerWidget {
  const AddCardScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyCustomAppBar(
              leadingIcon: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: const Icon(Iconsax.arrow_left),
              ),
              title: Text(
                "Add Card",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(30),
            AppTextField(
              inputType: TextInputType.visiblePassword,
              label: "Card Number",
              controller: TextEditingController(),
            ),
            const Gap(15),
            Row(
              children: [
                Expanded(
                  child: AppTextField(
                    inputType: TextInputType.visiblePassword,
                    label: "CCV",
                    controller: TextEditingController(),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: AppTextField(
                    inputType: TextInputType.visiblePassword,
                    label: "Exp",
                    controller: TextEditingController(),
                  ),
                ),
              ],
            ),
            const Gap(15),
            AppTextField(
              inputType: TextInputType.visiblePassword,
              label: "Cardholder Name",
              controller: TextEditingController(),
            ),
          ],
        ),
      ),
      bottomSheet: Container(
        width: size.width,
        height: size.height * 0.10,
        color: AppColors.greyColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppButton(
                title: "Save",
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    AppRoutes.payment,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
