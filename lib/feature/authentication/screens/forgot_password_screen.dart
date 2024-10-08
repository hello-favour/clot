import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_textfield.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScereen extends ConsumerWidget {
  const ForgotPasswordScereen({super.key});

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
            const MyCustomAppBar(
              leadingIcon: Iconsax.arrow_left,
            ),
            const Gap(20),
            Text(
              "Forgot Password",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const Gap(30),
            AppTextField(
              inputType: TextInputType.name,
              label: "Enter Email Address",
              controller: TextEditingController(),
            ),
            const Gap(20),
            AppButton(
              title: "Continue",
              onTap: () {
                Navigator.pushReplacementNamed(context, AppRoutes.aboutUser);
              },
            ),
          ],
        ),
      ),
    );
  }
}
