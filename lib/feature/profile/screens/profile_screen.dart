import 'package:clot/shared/constants/app_colors.dart';
import 'package:clot/shared/constants/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: size.height * 0.09),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 45,
              backgroundColor: AppColors.greyColor,
              backgroundImage: AssetImage(
                AppImages.image4,
              ),
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
    );
  }
}
