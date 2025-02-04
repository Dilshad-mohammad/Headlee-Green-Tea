import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/shop/Screens/CheckOut/checkout.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import '../../../../common/Appbar/appbar.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(showBackArrow: true, title: Text('Add new Address')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Form(
            child: Column(
              children: [
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user_copy), labelText: ' Full Name')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Icons.email_outlined), labelText: 'Email ID')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile_copy), labelText: 'Phone*')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_copy), labelText: 'Company Name(Optional)*')),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_copy), labelText: 'Town/City'))),
                    const SizedBox(width: DSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code_1_copy), labelText: 'State'))),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                Row(
                  children: [
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.home_copy), labelText: 'Street'))),
                    const SizedBox(width: DSizes.spaceBtwInputFields),
                    Expanded(child: TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity_copy), labelText: 'Postal Code'))),
                  ],
                ),
                const SizedBox(height: DSizes.spaceBtwInputFields),
                TextFormField(decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global_copy), labelText: 'Country')),
                const SizedBox(height: DSizes.defaultSpace * 2),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(const CheckOutScreen()),style: ElevatedButton.styleFrom(backgroundColor: DColors.primary), child: const Text('Save Address')),)


              ],
            ),
          ),
        ),
      ),
    );
  }
}
