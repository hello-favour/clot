import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SentEmailScreen extends ConsumerWidget {
  const SentEmailScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              AppImages.emailIcon,
              height: size.height * 0.15,
              width: size.height * 0.15,
              fit: BoxFit.cover,
            ),
            const Gap(20),
            Text(
              "We Sent you an Email to reset your password.",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            const Gap(25),
            SizedBox(
              width: size.height * 0.20,
              child: AppButton(
                title: "Return to Login",
                onTap: () {},
              ),
            ),
          ],
        ),
      ),
    );
  }
}
