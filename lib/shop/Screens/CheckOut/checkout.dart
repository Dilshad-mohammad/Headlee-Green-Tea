import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/Appbar/appbar.dart';
import 'package:untitled/common/widgets/bottom%20navigation/bottom_nativagation_button_only.dart';
import 'package:untitled/shop/Screens/CheckOut/Widgets/add_new_item.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import '../../../utils/constants/helpers/sizes.dart';
import 'Widgets/single_address.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('Checkout'), showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              const DSingleAddress(selectedAddress: true),
              const DSingleAddress(selectedAddress: false),
              const SizedBox(height: DSizes.spaceBtwSections),
              Center(
                  child: TextButton(
                      onPressed: () => Get.to(const AddNewAddressScreen()),
                      child: Text('+ Add New Address',
                          style: Theme.of(context).textTheme.titleLarge!.apply(
                              color: DColors.primary, fontSizeFactor: 1.2)))),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const DBottomAddToCartButton(text: 'Proceed to Next', color: true,),
    );
  }
}
