import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            "Profile",
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
          )),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children:[
                Center(child: Icon(Icons.person,size: 150,color: Colors.grey,)),
              SizedBox(height: 16),
              _buildField('Full Name', 'Salma & Haneen'),
              SizedBox(height: 16),
              _buildField('Phone Number', '0123456789'),
              SizedBox(height: 16),
              _buildField('Change Password', 'Enter your password',
                  isPassword: true),
              SizedBox(height: 16),
              _buildField('Confirm Password', 'Confirm your password',
                  isPassword: true),
            ],
          ),
        ));
  }

  Widget _buildField(String label, String placeholder,
      {bool isPassword = false}) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(label, style: TextStyle(fontSize: 25)),
        SizedBox(height: 10,),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 15),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            isPassword ? '●●●●●●●●' : placeholder,
            style: TextStyle(color: Colors.black54),
          ),
        ),
      ],
    );
  }
}