
import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

import '../../../../utils/constants/helpers/colors.dart';

class DBillingAmountSection extends StatelessWidget {
  const DBillingAmountSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(DSizes.defaultSpace),
      child: Column(
        children: [
          /// SubTotal
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Sub Total',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
              Row(
                children: [
                  const Icon(Icons.currency_rupee, size: DSizes.iconSm, color: DColors.secondary),
                  Text('360.0',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
                ],
              ),
            ],
          ),
          const SizedBox(height: DSizes.spaceBtwItems),

          /// Shipping Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Discount',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
              Row(
                children: [
                  const Icon(Iconsax.minus_copy, size: DSizes.iconSm, color: DColors.primary),
                  const Icon(Icons.currency_rupee, size: DSizes.iconSm, color: DColors.primary),
                  Text('120.0',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.primary)),
                ],
              ),
            ],
          ),
          const SizedBox(height: DSizes.spaceBtwItems),

          /// Tax Fee
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Tax',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
              Row(
                children: [
                  const Icon(Iconsax.add_copy, size: DSizes.iconSm, color: DColors.secondary),
                  const Icon(Icons.currency_rupee, size: DSizes.iconSm, color: DColors.secondary),
                  Text('60.0',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
                ],
              ),],
          ),
          const SizedBox(height: DSizes.spaceBtwItems),

          /// Order Total
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Shipping',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
              Row(
                children: [
                  const Icon(Iconsax.add_copy, size: DSizes.iconSm, color: DColors.secondary),
                  const Icon(Icons.currency_rupee, size: DSizes.iconSm, color: DColors.secondary),
                  Text('20.0',style: Theme.of(context).textTheme.bodyMedium!.apply(color: DColors.secondary)),
                ],
              ),],
          ),
          const SizedBox(height: DSizes.spaceBtwItems / 2),
          const Divider(),
          
        ],
      ),
    );
  }
}
