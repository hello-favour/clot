import 'package:clot/app/app_bar.dart';
import 'package:clot/feature/orders/widgets/order_row.dart';
import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:iconsax/iconsax.dart';

class OrderDetailsScreen extends ConsumerWidget {
  const OrderDetailsScreen({super.key});

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
                "Order #456765",
                style: Theme.of(context).textTheme.headlineSmall,
              ),
            ),
            const Gap(20),
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const OrderRow(
                    keyText: "Delivered",
                    valueText: "28 May",
                  ),
                  Gap(size.height * 0.05),
                  const OrderRow(
                    keyText: "Shipped",
                    valueText: "28 May",
                  ),
                  Gap(size.height * 0.05),
                  const OrderRow(
                    keyText: "Order Confirmed",
                    valueText: "28 May",
                  ),
                  Gap(size.height * 0.05),
                  const OrderRow(
                    keyText: "Order Placed",
                    valueText: "28 May",
                  ),
                  Gap(size.height * 0.05),
                  Text(
                    "Order Items",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        color: AppColors.greyColor,
                        alignment: Alignment.center,
                        child: ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: const Icon(Iconsax.receipt),
                          title: Text(
                            "2 items",
                            style: Theme.of(context).textTheme.bodyLarge,
                            overflow: TextOverflow.ellipsis,
                          ),
                          trailing: GestureDetector(
                            onTap: () {},
                            child: Text(
                              "View All",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge
                                  ?.copyWith(
                                    color: AppColors.primaryColor,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Gap(size.height * 0.04),
                  Text(
                    "Shipping details",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: double.infinity,
                        height: MediaQuery.of(context).size.height * 0.08,
                        padding: const EdgeInsets.only(right: 10, left: 10),
                        color: AppColors.greyColor,
                        alignment: Alignment.center,
                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In quis.",
                          style: Theme.of(context).textTheme.bodyMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
