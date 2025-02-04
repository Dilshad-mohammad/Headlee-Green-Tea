import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/common/Appbar/widget/cart_menu_icon.dart';
import 'package:untitled/common/widgets/search_container.dart';
import 'package:untitled/common/widgets/section_heading.dart';
import 'package:untitled/shop/Screens/Products/product_screeen.dart';
import 'package:untitled/shop/Screens/Products/widget/products.dart';
import 'package:untitled/shop/Screens/home/widgets/home_categories.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../common/widgets/Layout/grid_layout.dart';
import '../categories/subcategories.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final dark = DHelperFunctions.isDarkMode(context);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          leading: const CircleAvatar(backgroundImage: AssetImage(DImages.lightAppLogo)),
          title: Padding(padding: const EdgeInsets.only(top: 5, bottom: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Welcome', style: TextStyle(color: DColors.secondary, fontSize: DSizes.iconSm)),
                  Text('Dilshad Alam', style: TextStyle(color: DColors.primary))
                ],
              ),
              DCartCounterIcon(onPressed: (){}, ),
            ],
          ),
          ),
      
        ),
        body: SingleChildScrollView(
          child: Padding(padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: Column(
            children: [
              const DSearchContainer(text: 'Search Products',icon: Icons.search,showBorder: false, padding: EdgeInsets.all(DSizes.defaultSpace/2)),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/banner/WEB SITE BANNER DESIGN 05-1920x700 1.png'),
              ),
              const SizedBox(height:DSizes.spaceBtwSections),
              DSectionHeading(title: 'Categories',textColor: DColors.primary,onPressed: () => Get.to(const CategoryPage()),),
              const SizedBox(height:DSizes.spaceBtwItems),
              const CategorySection(),
              const SizedBox(height:DSizes.spaceBtwSections),
              DSectionHeading(title: 'Best Selling Products',showActionButton: true,onPressed:() => Get.to(const ProductScreen()),textColor: DColors.primary),
              const SizedBox(height:DSizes.spaceBtwSections),
              DGridLayout(
                  itemCount: 6,
                  itemBuilder: (_, index) => const DProductCardVertical()),
      
      
              const SizedBox(height:DSizes.spaceBtwSections),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('assets/banner/banner3-1920x700 1.png'),
              ),
            ],
          ),
          
          
          ),
        ),
      ),
    );
  }
}
