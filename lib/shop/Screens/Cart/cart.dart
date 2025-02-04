import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/common/Appbar/appbar.dart';
import 'package:untitled/common/widgets/bottom%20navigation/bottom_nativagation_button_only.dart';
import 'package:untitled/common/widgets/section_heading.dart';
import 'package:untitled/shop/Screens/Cart/Widget/billing_amount_section.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../utils/helpers/helper_function.dart';
import 'Widget/cart_items.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const DAppBar(title: Text('Cart'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const CartItems(),
            const CartItems(),
            const CartItems(),
            const CartItems(),
            const Padding(
              padding: EdgeInsets.only(
                  top: DSizes.defaultSpace, left: DSizes.defaultSpace),
              child: DSectionHeading(
                  title: 'Payment Summery', showActionButton: false),
            ),
            const DBillingAmountSection(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: DSizes.defaultSpace),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text('Total Payment amount', style: Theme.of(context).textTheme.headlineSmall!.apply(color: DColors.black),
                  maxLines: 1, overflow: TextOverflow.ellipsis),
                    Row(
                      children: [
                        Icon(Iconsax.add_copy, size: DSizes.iconSm, color: dark ? DColors.secondary : DColors.black),
                        Icon(Icons.currency_rupee, size: DSizes.iconSm, color: dark ? DColors.secondary : DColors.black),
                        Text('320.0',style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.secondary : DColors.black)),
                      ],
                    ),
                  ])
            ),
            const SizedBox(
              width: double.infinity,
                height: DSizes.xl*2.7,
                child: DBottomAddToCartButton(text: 'Proceed to Checkout', color: true))
          ],
        ),
      ),
    );
  }
}
