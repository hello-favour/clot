import 'package:clot/shared/constants/app_colors.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  final String title;
  final Row row;
  const SearchCard({
    super.key,
    required this.title,
    required this.row,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.06,
      padding: const EdgeInsets.only(right: 10, left: 10),
      color: AppColors.greyColor,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Theme.of(context).textTheme.bodyLarge,
            overflow: TextOverflow.ellipsis,
          ),
          row
        ],
      ),
    );
  }
}
