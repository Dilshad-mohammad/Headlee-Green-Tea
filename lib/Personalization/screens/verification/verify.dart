import 'package:flutter/material.dart';
import 'package:untitled/navigation_menu.dart';
import 'package:untitled/utils/constants/helpers/image_strings.dart';
import 'package:untitled/utils/helpers/helper_function.dart';
import '../../../utils/constants/helpers/colors.dart';

class Verification extends StatefulWidget {
  const Verification({super.key});
  @override
  State<Verification> createState() => _VerificationState();
}

class _VerificationState extends State<Verification> {

  final TextEditingController _fieldOne = TextEditingController();
  final TextEditingController _fieldTwo = TextEditingController();
  final TextEditingController _fieldThree = TextEditingController();
  final TextEditingController _fieldFour = TextEditingController();

  String? _otp;


  @override
  Widget build(BuildContext context) {
    final dark = DHelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(DImages.verifyImage,
                  height: 274, width: 274),
              Text('Verification', style: Theme.of(context).textTheme.titleLarge!.apply(fontSizeFactor: 1.8, color: dark ? DColors.light : DColors.dark)),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text('We have send the code verification to your mobile number',
                      style: Theme.of(context).textTheme.titleSmall!.apply(color: dark ? DColors.light : DColors.dark)),
                  const Text('+91-98765-43210',style: TextStyle(fontSize: 17, color: DColors.primary)),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 50,
                      width: 60,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: dark ? DColors.darkerGrey : DColors.softgrey,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 50,
                      width: 60,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: dark ? DColors.darkerGrey : DColors.softgrey,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 50,
                      width: 60,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: dark ? DColors.darkerGrey : DColors.softgrey,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: SizedBox(
                      height: 50,
                      width: 60,
                      child: TextField(
                        style: const TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 17),
                        decoration: InputDecoration(
                            filled: true,
                            fillColor: dark ? DColors.darkerGrey : DColors.softgrey,
                          border: InputBorder.none
                        ),
                      ),
                    ),
                  ),

                ],
              ),
              const SizedBox(height: 10),
              const Text("Didn't recieve OTP?",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12,color: Colors.white)),
              const SizedBox(height: 10),
              const Text('Resend Code',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15,color: Color(0xffDFAE00))),
              const SizedBox(height: 30),
              SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const NavigationMenu(),
                        ));
                  },
                    style: ElevatedButton.styleFrom(
                      backgroundColor:  DColors.primary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    child: const Text('Verify', style: TextStyle(color: Colors.white),),
                  )
              ),
            ],
          ),
        ),
      ),

    );
  }
}
