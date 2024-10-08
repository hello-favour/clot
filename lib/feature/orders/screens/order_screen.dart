import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/orders/widgets/order_card.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class OrderScreen extends ConsumerWidget {
  const OrderScreen({super.key});

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
                "Orders",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            // const Spacer(),
            // if (products.isNotEmpty) const NotificationCard(),
            // Image.asset(AppImages.checkOutIcon),
            // const Gap(20),
            // Text(
            //   "No Orders yet",
            //   style: Theme.of(context).textTheme.headlineSmall,
            // ),
            // const Gap(20),
            // SizedBox(
            //   width: size.height * 0.20,
            //   child: AppButton(
            //     title: "Explore Categories",
            //     onTap: () {},
            //   ),
            // ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(
                  5,
                  (index) => Container(
                    padding: const EdgeInsets.all(5),
                    width: size.width * 0.20,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(99),
                    ),
                    alignment: Alignment.center,
                    child: Text(
                      "Shipping",
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            color: AppColors.whiteColor,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            const Gap(10),
            const OrderCard(),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
