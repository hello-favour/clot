import 'package:clot/app/app_bar.dart';
import 'package:clot/app/routes.dart';
import 'package:clot/feature/Screens/profile/widgets/profile_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class AddressScreen extends ConsumerWidget {
  const AddressScreen({super.key});

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
                "Address",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            Expanded(
              child: ListView(
                padding: EdgeInsets.zero,
                children: List.generate(
                  5,
                  (index) => ProfileCard(
                    check: false,
                    text: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppRoutes.addAddressScreen);
                      },
                      child: Text(
                        "Edit",
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: AppColors.primaryColor,
                            ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    onTap: () {},
                    title:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
