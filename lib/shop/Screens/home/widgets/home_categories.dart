import 'package:flutter/material.dart';
import 'category_item.dart';

class CategorySection extends StatelessWidget {
  const CategorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 85,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: const [
              CategoryItem(imageUrl: 'assets/products/1 1.png', categoryName: 'Green Tea'),
              CategoryItem(imageUrl: 'assets/products/2 1.png', categoryName: 'Kadak Tea'),
              CategoryItem(imageUrl: 'assets/products/3 1.png', categoryName: 'Natural Tulsi'),
              CategoryItem(imageUrl: 'assets/products/4 1.png', categoryName: 'Lemon Tea'),
              CategoryItem(imageUrl: 'assets/products/1 1.png', categoryName: 'Green Tea'),
              CategoryItem(imageUrl: 'assets/products/2 1.png', categoryName: 'Kadak Tea'),
              CategoryItem(imageUrl: 'assets/products/3 1.png', categoryName: 'Natural Tulsi'),
              CategoryItem(imageUrl: 'assets/products/4 1.png', categoryName: 'Lemon Tea'),
            ],
          ),
        ),
      ],
    );
  }
}