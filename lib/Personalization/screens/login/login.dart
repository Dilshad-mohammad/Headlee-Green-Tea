import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/Personalization/screens/signup/sign_up.dart';
import 'package:untitled/Personalization/screens/verification/reset_password.dart';
import 'package:untitled/Personalization/screens/verification/verify.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/constants/helpers/sizes.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../utils/constants/helpers/colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(DImages.loginImage, height: 325, width: 325),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Login to your account',
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .apply(fontSizeFactor: 1.8,color: dark ? DColors.light : DColors.dark)),
                  Text('Please login to continue',
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .apply(fontSizeFactor: 1.4,color: dark ? DColors.light : DColors.dark)),
                ],
              ),
              const SizedBox(height: 20),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                      hintText: 'Enter Phone Number',
                      fillColor: DColors.light,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      prefixIcon: Icon(Iconsax.mobile_copy),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        fillColor: DColors.light,
                        filled: true,
                        hintStyle:
                            TextStyle(fontSize: 15.0, color: Colors.grey),
                        prefixIcon: Icon(Iconsax.lock_1_copy),
                        suffixIcon: Icon(Iconsax.eye_copy)),
                  ),
                  const SizedBox(height: 10),
                  Positioned(
                    right: double.maxFinite,
                    child: TextButton(
                        onPressed: () => Get.to(const ResetPassword()),
                        child: const Text('Forgot Password?',
                            style: TextStyle(color: Color(0xffDFAE00),fontSize: DSizes.md,fontWeight: FontWeight.w500))),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                      width: double.infinity,
                      height: 55,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Verification(),
                              ));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: DColors.primary,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      )),
                  const SizedBox(height: 160),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Dont have an account?',
                        style: TextStyle(color: Colors.grey),
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const SignUpScreen()),
                            );
                          },
                          child: const Text('SignUp',
                              style: TextStyle(color: DColors.primary)))
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
