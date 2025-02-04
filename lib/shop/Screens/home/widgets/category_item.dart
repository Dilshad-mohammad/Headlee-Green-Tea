import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';

import '../../../../utils/helpers/helper_function.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem(
      {super.key,
      required this.imageUrl,
      required this.categoryName,
      this.onTap});

  final String imageUrl;
  final String categoryName;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        width: 80,
        child: Column(
          children: [
            Container(
              height: 61,
              width: 61,
              decoration: BoxDecoration(
                color: dark ? DColors.dark : DColors.light,
                borderRadius: BorderRadius.circular(100),
              ),
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image(
                    image: AssetImage(imageUrl),
                    ),
              ),
            ),
            const SizedBox(height: 6),
            Text(
              categoryName,
              style: TextStyle(
                  fontSize: 13, color: dark ? Colors.white : DColors.dark),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
