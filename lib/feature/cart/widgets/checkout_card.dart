import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class CheckOutCard extends StatelessWidget {
  final String title;
  final String? text;
  final String? address;
  final Row? row;
  final VoidCallback? onTap;
  const CheckOutCard({
    super.key,
    required this.title,
    this.row,
    this.onTap,
    this.address,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
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
            title: Text(
              title,
              style: Theme.of(context).textTheme.bodySmall,
              overflow: TextOverflow.ellipsis,
            ),
            subtitle: row ??
                Text(
                  text!,
                  style: Theme.of(context).textTheme.bodyLarge,
                  overflow: TextOverflow.ellipsis,
                ),
            trailing: GestureDetector(
              onTap: onTap,
              child: const Icon(Iconsax.arrow_right_24),
            ),
          ),
        ),
      ),
    );
  }
}
