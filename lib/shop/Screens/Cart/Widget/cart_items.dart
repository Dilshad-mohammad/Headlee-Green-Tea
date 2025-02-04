import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import '../../../../common/widgets/Container/rounded_container.dart';
import '../../../../utils/constants/helpers/colors.dart';
import '../../../../utils/constants/helpers/image_strings.dart';
import '../../../../utils/constants/helpers/sizes.dart';
import '../../../../utils/helpers/helper_function.dart';

class CartItems extends StatelessWidget {
  const CartItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: DSizes.defaultSpace, vertical: DSizes.defaultSpace/2),
        child: DRoundedContainer(
          radius: 5,
          backgroundColor: dark ? DColors.dark : DColors.light,
          height: DSizes.productItemHeight / 1.8,
          width: double.infinity,
          child: Stack(
            children: [
              Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: DSizes.md, horizontal: DSizes.sm),
                  child: Image.asset(DImages.productImage1)),
              Positioned(
                top: 5,
                left: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Aroma Green Tea ...',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .apply(
                          color:
                          dark ? DColors.softgrey : DColors.black,
                          fontSizeFactor: 1.15),
                    ),
                    Text(
                      'Headlee Green Tea Lemon Flavour',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall!
                          .apply(
                          color:
                          dark ? DColors.darkGrey : DColors.black,
                          fontSizeFactor: 0.8),
                    ),
                    const SizedBox(height: DSizes.spaceBtwItems),
                    const Row(
                      children: [
                        Icon(Icons.currency_rupee, size: DSizes.iconSm, color: DColors.primary),
                        Text('142', style: TextStyle(fontSize: 17,color: DColors.primary)),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                  top: 4,
                  right: 2,
                  child: IconButton(onPressed: () {( showYesNoDialog(context));}, icon: const Icon(Icons.delete_outline,color: Colors.red,))),
              Positioned(
                bottom: 12,
                right: 15,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    /// Add to Cart Button
                    Container(
                        decoration: const BoxDecoration(
                            color: DColors.primary,
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(DSizes.xs),
                                bottomLeft: Radius.circular(DSizes.xs))),
                        child: const SizedBox(
                          width: DSizes.iconMd,
                          height: DSizes.iconSm*1.2,
                          child: Center(
                              child:
                              Icon(
                                  size: 16,
                                  Iconsax.minus_copy, color: DColors.white)),
                        )),
                    Container(
                      decoration: BoxDecoration(
                        color: dark ? DColors.dark : DColors.light,
                      ),
                      child: SizedBox(
                        width: DSizes.iconMd,
                        height: DSizes.iconSm*1.2,
                        child: Center(child: Text('8', style: TextStyle(color: dark ? DColors.light : DColors.black, fontSize: DSizes.iconXs),)),
                      ),
                    ),
                    Container(
                      decoration: const BoxDecoration(
                        color: DColors.primary,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(DSizes.xs),
                          bottomRight: Radius.circular(DSizes.xs),
                        ),
                      ),
                      child: const SizedBox(
                        width: DSizes.iconMd,
                        height: DSizes.iconSm*1.2,
                        child: Center(
                            child: Icon(
                                size: 16,
                                Iconsax.add_copy, color: DColors.white)),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}

void showYesNoDialog(BuildContext context) {
  final dark = DHelperFunctions.isDarkMode(context);
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Center(child: Text('Are you sure?', style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.white : DColors.black, fontSizeFactor: 1.4),)),
        content: const Text('Are you sure you would like to delete this item from the shopping basket'),
        actions: <Widget>[
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.transparent,side: const BorderSide(color: DColors.primary)),
                  child: const Text('No',style: TextStyle(color: DColors.primary)),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                ),
              ),
              const SizedBox(width: DSizes.spaceBtwInputFields),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: DColors.primary,side: const BorderSide(color: DColors.primary)),
                  child: const Text('Yes'),
                  onPressed: () {
                    Navigator.of(context).pop(); // Close the dialog
                  },
                ),
              ),
            ],
          ),

        ],
      );
    },
  );
}
