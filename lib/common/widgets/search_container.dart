import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../utils/constants/helpers/colors.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/device/device_utility.dart';
import '../../../../utils/helpers/helper_function.dart';

class DSearchContainer extends StatelessWidget {
  const DSearchContainer({
    super.key,
    required this.text,
    this.showBackground = true,
    this.showBorder = true,
    this.icon = Iconsax.search_normal_copy,
    this.onTap, required this.padding,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: padding,
        child: Container(
          width: DDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(DSizes.sm),
          decoration: BoxDecoration(
            color: showBackground ? dark ? DColors.dark : DColors.light : Colors.transparent,
            borderRadius: BorderRadius.circular(DSizes.cardRadiusSm),
            border: showBorder ? Border.all(color: DColors.grey) : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(text, style: Theme.of(context).textTheme.bodySmall),
              Icon(icon, color: DColors.primary,size: DSizes.iconMd,),

            ],
          ),
        ),
      ),
    );
  }
}