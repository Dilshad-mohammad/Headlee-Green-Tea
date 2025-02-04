import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DBottomAddToCartButton extends StatelessWidget {
  const DBottomAddToCartButton(
      {super.key, required this.text, this.color});

  final String text;
  final bool? color;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Container(
        height: DSizes.appbarHeight * 1.4,
        padding: const EdgeInsets.symmetric(
            horizontal: DSizes.defaultSpace, vertical: DSizes.defaultSpace / 2),
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        child: Padding(
          padding: const EdgeInsets.all(DSizes.sm),
          child: SizedBox(
            height: DSizes.lg * 1.6,
            width: DSizes.buttonWidth / 1.5,
            child: TextButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: DColors.primary,
                  side: const BorderSide(color: DColors.primary),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                ),
                child: Text(text,
                    style: Theme.of(context).textTheme.bodyLarge!.apply(
                        fontSizeFactor: 1.1,
                        color: DColors.white,
                        backgroundColor: DColors.primary))),
          ),
        ));
  }
}
