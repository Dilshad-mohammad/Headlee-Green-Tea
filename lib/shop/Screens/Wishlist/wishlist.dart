import 'package:flutter/material.dart';
import 'package:untitled/common/Appbar/appbar.dart';

import '../../../common/widgets/Layout/grid_layout.dart';
import '../../../utils/constants/helpers/sizes.dart';
import '../Products/widget/products.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DAppBar(title: Text('WishList'),showBackArrow: true),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(DSizes.defaultSpace),
          child: DGridLayout(
              itemCount: 4,
              itemBuilder: (_, index) => const DProductCardVertical()),
        ),
      ),
    );
  }
}
