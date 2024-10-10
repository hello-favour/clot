import 'package:clot/app/routes.dart';
import 'package:clot/feature/authentication/widgets/age_range_card.dart';
import 'package:clot/feature/authentication/widgets/gender_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class AboutUserScreen extends ConsumerWidget {
  const AboutUserScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(top: size.height * 0.15, right: 20, left: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Tell us About yourself",
              style: Theme.of(context).textTheme.headlineMedium,
              textAlign: TextAlign.center,
            ),
            Gap(size.height * 0.05),
            Text(
              "Who do you shop for ?",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(12),
            Row(
              children: [
                Expanded(
                  child: GenderCard(
                    size: size,
                    title: "Men",
                    genderOption: true,
                    onTap: () {},
                  ),
                ),
                const Gap(10),
                Expanded(
                  child: GenderCard(
                    size: size,
                    title: "Women",
                    genderOption: false,
                    onTap: () {},
                  ),
                ),
              ],
            ),
            Gap(size.height * 0.07),
            Text(
              "How Old are you ?",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(20),
            AgeRangeCard(size: size),
            const Spacer(),
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
                title: "Finish",
                onTap: () {
                  Navigator.pushNamed(context, AppRoutes.signIn);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
