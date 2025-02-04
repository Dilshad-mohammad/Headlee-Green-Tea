import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../../common/widgets/Container/rounded_container.dart';

class DSingleAddress extends StatelessWidget {
  const DSingleAddress({super.key,
    required this.selectedAddress});

  final bool selectedAddress;
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return DRoundedContainer(
      width: double.infinity,
      showBorder: true,
      padding: const EdgeInsets.all(DSizes.sm/1.5),
      backgroundColor: selectedAddress ? DColors.primary.withOpacity(0.5) : Colors.transparent,
      borderColor: selectedAddress ? Colors.transparent : DColors.grey,
      margin: const EdgeInsets.all(DSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 20,
            child: Icon(selectedAddress ? Iconsax.tick_circle_copy : null,
              color: selectedAddress ? dark ? DColors.light : DColors.dark : null,
            ),
          ),
          ListTile(title: Text('Office',style: Theme.of(context).textTheme.titleMedium!.apply(color: dark ? DColors.softgrey : DColors.black,fontSizeFactor: 1.1),),
              subtitle: Text('1st Floor, A-33 Rajouri Garden,[], Ring Road, Opp.Flyover', style: TextStyle(fontSize: 14,color: dark ? DColors.softgrey : DColors.black),)),
          const SizedBox(height: DSizes.spaceBtwInputFields)
        ],
      ),
    );
  }
}
