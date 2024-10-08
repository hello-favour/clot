import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: List.generate(
          5,
          (index) => Padding(
            padding: EdgeInsets.only(right: size.width * 0.04),
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 40,
                  backgroundColor: AppColors.greyColor,
                  backgroundImage: AssetImage(
                    AppImages.hoodie,
                  ),
                ),
                Text(
                  "Hoodies",
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
