import 'package:flutter/material.dart';
import 'package:lorem_ipsum/lorem_ipsum.dart';
import 'package:untitled/common/Appbar/appbar.dart';
import 'package:untitled/common/widgets/add_rmv_button.dart';
import 'package:untitled/common/widgets/section_heading.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../common/widgets/bottom navigation/bottom_navigationbar.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const DAppBar(title: Text('Details'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 220,
                width: double.infinity,
                child: Stack(children: [
                  SizedBox(
                      width: 360, child: Image.asset(DImages.productImage3)),
                  Positioned(
                    right: 0,
                    child: CircleAvatar(
                      backgroundImage: const AssetImage(DImages.hexagon),
                      radius: DSizes.iconLg * 1.2,
                      backgroundColor: dark ? DColors.dark : DColors.white,
                      child: const Text('25% off',
                          style: TextStyle(fontSize: 15, color: DColors.white)),
                    ),
                  ),
                ]),
              ),
              const SizedBox(height: DSizes.spaceBtwItems),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'No.1 Kadak Chai Tea',
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                        fontSizeFactor: 1.4,
                        color: dark ? DColors.white : Colors.black),
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  Text(
                    'Pouch 1kg',
                    style: Theme.of(context).textTheme.titleLarge!.apply(
                        fontSizeFactor: 1.4,
                        color: dark ? DColors.white : Colors.black),
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Product SKU: ',
                        style: Theme.of(context).textTheme.titleLarge!.apply(
                            color: dark ? DColors.softgrey : Colors.grey),
                      ),

                      Text(
                        '#KKLW30',
                        style: Theme.of(context).textTheme.titleMedium!.apply(
                            color: dark ? DColors.white : Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          const Icon(Icons.currency_rupee,size: DSizes.iconSm),
                          Text(
                            '142',
                            style: Theme.of(context).textTheme.titleLarge!.apply(
                              fontSizeFactor: 1.3,
                                color: DColors.primary),
                          ),
                          const SizedBox(width: DSizes.spaceBtwItems),
                          const Icon(Icons.currency_rupee,size: DSizes.iconSm/1.1),
                          Text(
                            '192',
                            style: Theme.of(context).textTheme.titleLarge!.apply(
                              fontSizeFactor: 1.2,decoration: TextDecoration.lineThrough,
                                color: DColors.secondary),
                          ),
                        ],
                      ),
                      const Row(
                      children: [
                        DAddRemoveButton(),
                      ],),
                    ],
                  ),
                  const SizedBox(height: DSizes.spaceBtwItems),
                  const DSectionHeading(title: 'Size*',showActionButton: false),
                  const SizedBox(height: DSizes.spaceBtwSections),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                  height: DSizes.lg*1.6,
                        width: DSizes.buttonWidth/1.5,
                        child: TextButton(
                            onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,side: const BorderSide(color: DColors.secondary),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ), ), child: Center(child: Text('250 gm',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeFactor: 1.1, color: DColors.secondary)))),
                      ),
                      SizedBox(
                        height: DSizes.lg*1.6,
                        width: DSizes.buttonWidth/1.5,
                        child: TextButton(
                            onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: DColors.primary,side: const BorderSide(color: DColors.primary),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ), ), child: Text('500 gm',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeFactor: 1.1, color: DColors.white,backgroundColor: DColors.primary))),
                      ),
                      SizedBox(
                  height: DSizes.lg*1.6,
                        width: DSizes.buttonWidth/1.5,
                        child: TextButton(
                            onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,side: const BorderSide(color: DColors.secondary),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ), ), child: Center(child: Text('1 Kg',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeFactor: 1.1, color: DColors.secondary)))),
                      ),
                      SizedBox(
                  height: DSizes.lg*1.6,
                        width: DSizes.buttonWidth/1.5,
                        child: TextButton(
                            onPressed: (){},style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,side: const BorderSide(color: DColors.secondary),shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(35.0),
                        ), ), child: Center(child: Text('2 kg',style: Theme.of(context).textTheme.bodyLarge!.apply(fontSizeFactor: 1.1, color: DColors.secondary)))),
                      ),
                      ],
                  ),
                  const DSectionHeading(title: 'Product Description'),
                  Text(loremIpsum(words: 100)),
                  const SizedBox(height: DSizes.spaceBtwItems),
                ],
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DBottomAddToCart(),
    );
  }
}
