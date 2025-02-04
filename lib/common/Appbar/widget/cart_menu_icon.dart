import 'package:flutter/material.dart';
import '../../../../utils/constants/helpers/colors.dart';
import '../../../utils/helpers/helper_function.dart';

class DCartCounterIcon extends StatelessWidget {
  const DCartCounterIcon({
    super.key,
    this.iconColor,
    required this.onPressed,
  });

  final Color? iconColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {

    final dark = DHelperFunctions.isDarkMode(context);
    return Stack(
      children: [
        IconButton(
            onPressed: onPressed,
            icon: CircleAvatar(backgroundImage: const AssetImage('assets/icons/Basket.png'),backgroundColor: dark ? Colors.black : DColors.white,),
                color: iconColor),
        Positioned(
          right: 0,
          child: Container(
            width: 20,
            height: 20,
            decoration: BoxDecoration(
              color: DColors.primary,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2',
                  style: Theme.of(context).textTheme.labelLarge!
                      .apply(color: DColors.white, fontSizeFactor: 1.2)),
            ),
          ),
        ),
      ],
    );
  }
}
