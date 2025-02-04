import 'package:flutter/material.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class DBottomAddToCart extends StatelessWidget {
  const DBottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Container(
      height: DSizes.appbarHeight*1.4,
      padding: const EdgeInsets.symmetric(
          horizontal: DSizes.defaultSpace, vertical: DSizes.defaultSpace / 2),
      decoration: BoxDecoration(
          color: dark ? DColors.darkerGrey : DColors.light,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Text('Total Price', style: TextStyle(color: DColors.secondary, fontWeight: FontWeight.w400, fontSize: 15.11)),
              Row(
                children: [
                  Icon(Icons.currency_rupee,color: DColors.primary,size: 17,),
                  Text('142', style: TextStyle(color: DColors.primary, fontWeight: FontWeight.w500, fontSize: 23.11)),
                ],
              ),
            ],
          ),
          ElevatedButton(

              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(35.0),
                ),
                padding: const EdgeInsets.all(DSizes.md),
                backgroundColor: DColors.primary,
                side: BorderSide(width: 0,color: dark ? DColors.darkerGrey : DColors.white),
              ),
              onPressed: (){},
              child: const Row(
                children: [
                  ImageIcon(AssetImage(DImages.basket)),
                  SizedBox(width: 30),
                  Text('Add to Cart'),
                  SizedBox(width: 15),
                ],
              )),
        ],
      ),
    );
  }
}
