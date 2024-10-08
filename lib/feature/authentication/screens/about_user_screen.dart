import 'package:clot/feature/authentication/widgets/gender_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

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
            const Gap(25),
            Text(
              "Who do you shop for ?",
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Gap(10),
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
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class AgeRangeCard extends StatelessWidget {
  const AgeRangeCard({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: size.width,
      height: size.height * 0.06,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: AppColors.greyColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "Age Range",
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  color: AppColors.blackColor,
                ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.arrow_down_14,
              color: AppColors.blackColor,
            ),
          ),
        ],
      ),
    );
  }
}
