import 'package:flutter/material.dart';
import 'package:untitled/common/Appbar/appbar.dart';
import 'package:untitled/shop/Screens/Products/widget/products.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';

import '../../../common/widgets/Layout/grid_layout.dart';
import '../../../utils/helpers/helper_function.dart';

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: const DAppBar(title: Text('Products'), showBackArrow: true),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: DGridLayout(
              itemCount: 8,
              itemBuilder: (_, index) => const DProductCardVertical()),
        ),
      ),
    );
  }
}
