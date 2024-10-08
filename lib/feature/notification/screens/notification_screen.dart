import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/notification/widgets/notification_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:clot/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class NotificationScreen extends ConsumerWidget {
  const NotificationScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    List products = [];
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.05),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MyCustomAppBar(
              title: Text(
                "Notifications",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            const Spacer(),
            if (products.isNotEmpty) const NotificationCard(),
            Image.asset(AppImages.bellIcon),
            const Gap(20),
            Text(
              "No Notification yet",
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            const Gap(20),
            SizedBox(
              width: size.height * 0.20,
              child: AppButton(
                title: "Explore Categories",
                onTap: () {},
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
