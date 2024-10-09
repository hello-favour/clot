import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class PaymentCard extends StatelessWidget {
  final VoidCallback? onTap;
  final Widget title;
  final double? height;
  final Widget? subTitle, text;
  final bool check;

  const PaymentCard({
    super.key,
    this.onTap,
    required this.title,
    this.text,
    this.height,
    this.subTitle,
    this.check = true,
  });

  @override
  Widget build(BuildContext context) {
    final double cardHeight =
        height ?? MediaQuery.of(context).size.height * 0.06;

    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: check ? onTap : null,
          child: Container(
            width: double.infinity,
            height: cardHeight,
            padding: const EdgeInsets.only(right: 10, left: 10),
            color: AppColors.greyColor,
            alignment: Alignment.center,
            child: ListTile(
              contentPadding: EdgeInsets.zero,
              title: title,
              subtitle: subTitle,
              trailing: check ? const Icon(Iconsax.arrow_right_24) : text,
            ),
          ),
        ),
      ),
    );
  }
}
