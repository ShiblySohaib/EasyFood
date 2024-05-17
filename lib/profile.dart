import 'package:easyfood_flutter/customButton.dart';
import 'package:flutter/material.dart';
import 'package:easyfood_flutter/landing.dart';
import 'package:easyfood_flutter/animations.dart';

class Profile extends StatefulWidget {
  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  TextEditingController nameController =
      TextEditingController(text: 'Shibly');
  TextEditingController emailController =
      TextEditingController(text: 'mohammad15-4258@diu.edu.bd');
  TextEditingController addressController =
      TextEditingController(text: 'DSC, Birulia, Savar, Dhaka-1216');
  TextEditingController oldPasswordController = TextEditingController();
  TextEditingController newPasswordController = TextEditingController();

  bool isEditing = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Profile'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // cart logic
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.person,
                      size: 50,
                      color: Colors.grey,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: Icon(Icons.camera_alt,
                          color: Color(0xffFC6011)),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            GestureDetector(
              onTap: () {
                setState(() {
                  isEditing = true;
                });
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.edit,
                    color: Color(0xffFC6011),
                    size: 12,
                  ),
                  SizedBox(width: 2),
                  Text(
                    'Edit Profile',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xffFC6011),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Hi there! ${nameController.text.split(' ')[0]}', // Sync with the first word of the name input field
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
              ],
            ),
            GestureDetector(
              onTap: () {
                // Sign out logic using SlideUpAnimation
                Navigator.of(context).pushAndRemoveUntil(
                  SlideUpAnimation(
                    page: LandingScreen(),
                    duration: Duration(milliseconds: 500),
                  ),
                  (Route<dynamic> route) => false,
                );
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Sign out',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextFormField(
                    controller: nameController,
                    enabled: isEditing,
                    decoration: InputDecoration(
                      labelText: 'Name',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  TextFormField(
                    controller: emailController,
                    enabled: isEditing,
                    decoration: InputDecoration(
                      labelText: 'Email',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  TextFormField(
                    controller: addressController,
                    enabled: isEditing,
                    decoration: InputDecoration(
                      labelText: 'Address',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    controller: oldPasswordController,
                    enabled: isEditing,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'Old Password',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                  TextFormField(
                    controller: newPasswordController,
                    enabled: isEditing,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'New Password',
                      labelStyle: TextStyle(color: Colors.grey),
                    ),
                    style: TextStyle(color: Colors.black),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            if (isEditing)
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  OrangeButton(
                    text: 'Save',
                    onPressed: () {
                      setState(() {
                        isEditing = false;
                      });
                    },
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}
