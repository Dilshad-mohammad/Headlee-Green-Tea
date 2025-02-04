import 'package:flutter/material.dart';
import 'package:iconsax_flutter/iconsax_flutter.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Profile", style: TextStyle(color: Colors.white,fontSize: 21,fontWeight: FontWeight.w500)),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context); // Navigate back
          },
        ),
      ),
      backgroundColor: Colors.black,
      body: const SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(16, 40, 16, 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              minRadius: 50,
              maxRadius: 70,
              child: Icon(Iconsax.user_copy, size: 100),
            ),
            SizedBox(height: 40),
            Text('Dilshad Alam',style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 19)),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.person_2_outlined,color: Colors.white),
              title: Text('Edit Profile',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.location_on_rounded,color: Colors.white),
              title: Text('Manage Address',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.list_alt,color: Colors.white),
              title: Text('My Order',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.share,color: Colors.white),
              title: Text('Share App',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip),
              title: Text('Privecy Policy',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.library_books_sharp,color: Colors.white),
              title: Text('Terms and Conditions',style: TextStyle(color: Colors.white)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
            ListTile(
              leading: Icon(Icons.logout,color: Colors.pinkAccent),
              title: Text('Logout',style: TextStyle(color: Colors.pinkAccent)),
              trailing: Icon(Icons.arrow_forward_ios_outlined,color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}