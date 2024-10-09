import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class CartRow extends StatelessWidget {
  final String keyText;
  final String valueText;
  const CartRow({
    super.key,
    required this.keyText,
    required this.valueText,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          keyText,
          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                color: AppColors.greyText.withOpacity(0.5),
              ),
        ),
        Text(
          "\$$valueText",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
