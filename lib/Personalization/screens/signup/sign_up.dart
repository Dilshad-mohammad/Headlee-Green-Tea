import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/helpers/helper_function.dart';

import '../../../utils/constants/helpers/colors.dart';
import '../login/login.dart';


class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _LoginPageState();
}

class _LoginPageState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              Image.asset(DImages.signupImage,
                  height: 325, width: 325),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('Create a New Account', style: Theme.of(context).textTheme.titleLarge!.apply(fontSizeFactor: 1.8,color: dark ? DColors.light : DColors.dark)),
                  Text('Please fill the input down below',
                      style: Theme.of(context).textTheme.titleSmall!.apply(fontSizeFactor: 1.3,color: dark ? DColors.light : DColors.dark)),
                ],
              ),
              const SizedBox(height: 20),
              Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                      hintText: 'Enter Name',
                      fillColor: DColors.light,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      prefixIcon: Icon(Icons.person),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                      hintText: 'Enter Mobile Number',
                      fillColor: DColors.light,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      prefixIcon: Icon(Iconsax.mobile_copy),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                      hintText: 'Enter Email ID',
                      fillColor: DColors.light,
                      filled: true,
                      hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                      prefixIcon: Icon(Icons.email_outlined),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    style: Theme.of(context).textTheme.titleLarge!.apply(color: dark ? DColors.dark : DColors.light),
                    decoration: const InputDecoration(
                        hintText: 'Enter Password',
                        fillColor: DColors.light,
                        filled: true,
                        hintStyle: TextStyle(fontSize: 15.0, color: Colors.grey),
                        prefixIcon: Icon(Iconsax.lock_1_copy),
                        suffixIcon: Icon(Iconsax.eye_copy)
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
                  const SizedBox(height: 10),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                    Checkbox(value: true, onChanged: null,fillColor: WidgetStatePropertyAll(DColors.primary)),
                      Text('Agree with ',
                          style: TextStyle(
                              fontSize: 13,
                              color: DColors.secondary)),
                      Text(
                        ' Terms & Conditions',
                        style: TextStyle(
                            fontSize: 13,
                            color: DColors.primary),
                      ),
                    ],
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
                        child: const Text('SIGN UP', style: TextStyle(color: Colors.white),),
                      )
                  ),
                  const SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already have an account?', style: TextStyle(color: Colors.grey),),
                      TextButton(onPressed: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const LoginPage()),
                        );
                      }, child: const Text('Login', style: TextStyle(color: DColors.primary)))
                    ],
                  ),
                ],),


            ],
          ),
        ),
      ),
    );
  }
}
