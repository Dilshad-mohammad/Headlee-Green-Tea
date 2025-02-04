import 'package:flutter/material.dart';
import '../Personalization/screens/login/login.dart';

class editProfile extends StatefulWidget {
  const editProfile({super.key});

  @override
  State<editProfile> createState() => _editProfileState();
}

class _editProfileState extends State<editProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Edit Profile", style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              minRadius: 50,
              maxRadius: 70,
              child: Image.asset('assets/logos/2-2.png'),
            ),
            const SizedBox(height: 40),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'Johny Depp',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.person_2_outlined,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.emailAddress,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: 'example111@gmail.com',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: Image.asset('assets/logos/Mail.png',height: 25,width: 25),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.number,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: '+91-98765-43210',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.phone_android,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            const SizedBox(height: 20),
            TextField(
              keyboardType: TextInputType.visiblePassword,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                hintText: ''
                    '**********',
                fillColor: const Color(0xff1C1B1B),
                filled: true,
                hintStyle: const TextStyle(fontSize: 15.0, color: Colors.grey),
                prefixIcon: const Icon(
                  Icons.lock_outline,
                  color: Colors.white,
                ),
                border:
                OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
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
                          builder: (context) => const LoginPage(),
                        ));
                    },
                  style: ElevatedButton.styleFrom(
                  backgroundColor:  Colors.pinkAccent,
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Save Changes', style: TextStyle(color: Colors.white),),
                )
            ),
           ],
        ),
      ),
    );
  }
}