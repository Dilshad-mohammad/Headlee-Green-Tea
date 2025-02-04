import 'package:flutter/material.dart';
import 'package:untitled/common/Appbar/appbar.dart';
import 'package:untitled/utils/constants/helpers/colors.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

class CategoryPage extends StatefulWidget {
  const CategoryPage({super.key});

  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  final int _currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(

      appBar: const DAppBar(title: Text('Category'),showBackArrow: true),
      body: GridView.builder(

        padding: const EdgeInsets.all(16.0),

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
          childAspectRatio: 0.85,
        ),

        itemCount: categories.length,

        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 37,
                backgroundImage: AssetImage(categories[index].imagePath),
              ),
              Text(
                categories[index].name,
                style: TextStyle(color: dark ? Colors.white : DColors.black),
                textAlign: TextAlign.center,
              ),
            ],
          );
        },

      ),
    );
  }
}

class Category {

  final String name;
  final String imagePath;

  Category({required this.name, required this.imagePath});
}

List<Category> categories = [
  Category(name: 'Green Tea ', imagePath: DImages.productImage1),
  Category(name: 'Kadak Tea', imagePath: DImages.productImage2),
  Category(name: 'Natural Tulsi', imagePath: DImages.productImage3),
  Category(name: 'Lemon Tea', imagePath: DImages.productImage4),
  Category(name: 'Green Tea ', imagePath: DImages.productImage1),
  Category(name: 'Kadak Tea', imagePath: DImages.productImage2),
  Category(name: 'Natural Tulsi', imagePath: DImages.productImage3),
  Category(name: 'Lemon Tea', imagePath: DImages.productImage4),

];
