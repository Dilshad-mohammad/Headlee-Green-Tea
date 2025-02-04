import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/shop/Screens/store/product_details_screen.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';
import '../../../../common/widgets/Container/rounded_container.dart';
import '../../../../common/widgets/Icons/dcircular_icons.dart';
import '../../../../common/widgets/drounded_image.dart';
import '../../../../common/widgets/product_title_text.dart';
import '../../../../utils/constants/helpers/image_strings.dart';

class DProductCardVertical extends StatelessWidget {
  const DProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);

    /// Container with side paddings, color, edges, radius and shadow.
    return GestureDetector(
      onTap: () => Get.to(const ProductDetailsScreen()),
      child: Container(
        width: 150,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(DSizes.productImageRadius),
          color: dark ? DColors.black : DColors.white,
        ),
        child: Column(
          children: [
            /// Thumbnail, Wishlist Button, Discount Tag
            DRoundedContainer(
              height: 170,
              padding: const EdgeInsets.all(DSizes.sm),
              backgroundColor: dark ? DColors.dark : DColors.light,
              child: const Stack(
                children: [
                  /// -- Thumbnail Image
                  Padding(
                    padding: EdgeInsets.all(12.0),
                    child: DRoundedImage(
                        imageUrl: DImages.productImage1,
                        applyImageRadius: true,
                        padding: EdgeInsets.only(top: 30),
                        fit: BoxFit.cover),
                  ),

                  /// -- Favourite Icon Button
                  Positioned(
                      top: 0,
                      right: 0,
                      child: DCircularIcon(
                          icon: Iconsax.heart_copy, color: DColors.primary)),
                ],
              ),
            ),
            const SizedBox(height: DSizes.spaceBtwItems / 2),

            /// -- Detials
            const Padding(
              padding: EdgeInsets.only(left: DSizes.sm * 1.5),
              child: DProductTitleText(
                  title: 'Headlee Green Natural Aroma Green Tea',
                  smallSize: true,
                  textAlign: TextAlign.center),
            ),

            /// Price
            const Padding(
                padding: EdgeInsets.only(left: DSizes.sm, top: DSizes.sm-6),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.currency_rupee, size: DSizes.iconSm),
                    Text('142', style: TextStyle(fontSize: 17)),
                    SizedBox(width: DSizes.spaceBtwItems),
                    Icon(Icons.currency_rupee,
                        size: DSizes.iconSm, color: DColors.secondary),
                    Text('195 ',
                        style: TextStyle(
                            fontSize: 17,
                            decoration: TextDecoration.lineThrough,
                            color: DColors.secondary)),
                    Text(
                      ' 25% off',
                      style: TextStyle(
                          fontSize: 14,
                          color: DColors.primary,
                          fontWeight: FontWeight.w800),
                    ),
                  ],
                )),

            const SizedBox(height: DSizes.spaceBtwSections),

            /// Price Row
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                /// Add to Cart Button
                Container(
                    decoration: const BoxDecoration(
                        color: DColors.primary,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(DSizes.cardRadiusSm),
                            bottomLeft: Radius.circular(DSizes.cardRadiusSm))),
                    child: const SizedBox(
                      width: DSizes.iconLg * 1.5,
                      height: DSizes.iconLg,
                      child: Center(
                          child:
                              Icon(Iconsax.minus_copy, color: DColors.white)),
                    )),
                Container(
                  decoration: BoxDecoration(
                    color: dark ? DColors.dark : DColors.light,
                  ),
                  child: SizedBox(
                    width: DSizes.iconLg * 2,
                    height: DSizes.iconLg,
                    child: Center(child: Text('2', style: TextStyle(color: dark ? DColors.white : DColors.dark , fontSize: DSizes.iconSm),)),
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: DColors.primary,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(DSizes.cardRadiusSm),
                      bottomRight: Radius.circular(DSizes.cardRadiusSm),
                    ),
                  ),
                  child: const SizedBox(
                    width: DSizes.iconLg * 1.5,
                    height: DSizes.iconLg,
                    child: Center(
                        child: Icon(Iconsax.add_copy, color: DColors.white)),
                  ),
                )
              ],
            ),
            const SizedBox(height: DSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
