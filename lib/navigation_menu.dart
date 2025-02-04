import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/profile/profile.dart';
import 'package:untitled/shop/Screens/Cart/cart.dart';
import 'package:untitled/shop/Screens/Wishlist/wishlist.dart';
import 'package:untitled/shop/Screens/home/home.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar: Obx( () => NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? DColors.black : Colors.white,
          indicatorColor: darkMode ? DColors.white.withOpacity(0.1) : DColors.black.withOpacity(0.1),

          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home_copy), label: 'Home'),
            NavigationDestination(icon: ImageIcon(AssetImage(DImages.basket)), label: 'Order',),
            NavigationDestination(icon: Icon(Iconsax.heart_copy), label: 'Wishlist'),
            NavigationDestination(icon: Icon(Iconsax.user_copy), label: 'Profile'),
          ],
        ),
      ),
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController{
  final Rx<int> selectedIndex = 0.obs;

  final screens = [const HomeScreen(), const CartScreen(), const WishlistScreen(), const Profile()];
}
