import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/Personalization/screens/login/login.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/helpers/helper_function.dart';
import '../../../utils/constants/helpers/colors.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(DImages.loginImage,
                  height: 325, width: 325),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Create Password', style: Theme.of(context).textTheme.titleLarge!.apply(fontSizeFactor: 1.6,color: dark ? DColors.light : DColors.dark)),
                  Text('Create a New Password and Reset your Account',
                      style: Theme.of(context).textTheme.titleSmall!.apply(fontSizeFactor: 1.3,color: dark ? DColors.light : DColors.dark)),
                ],
              ),
              const SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                      hintText: 'Enter Password',
                      fillColor: DColors.light,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      prefixIcon: Icon(Iconsax.lock_1_copy),
                        suffixIcon: Icon(Iconsax.eye_slash_copy)
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                        hintText: 'Confirm Password',
                        fillColor: DColors.light,
                        filled: true,
                        hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                        prefixIcon: Icon(Iconsax.lock_1_copy),
                        suffixIcon: Icon(Iconsax.eye_copy)
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LoginPage(),
                            ));
                      },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:  DColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text('Reset Password', style: TextStyle(color: Colors.white),),
                      )
                  ),
                ],),


            ],
          ),
        ),
      ),
    );
  }
}


