import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DeveloperScreen extends StatelessWidget {
  const DeveloperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(child: Text("Developer",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
        backgroundColor:  Colors.deepPurpleAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(child: Icon(Icons.developer_mode_outlined,color: Colors.deepPurpleAccent,size: 60,)),
                  Text("Salma Ehab",style: TextStyle(fontSize: 30),)
                ],
              ),
            )),
            SizedBox(height: 20,),
            Expanded(child: Container(
              decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20)
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Center(child: Icon(Icons.developer_mode_outlined,color: Colors.deepPurpleAccent,size: 60,)),
                  Text("Haneen Alaa",style: TextStyle(fontSize: 30),)
                ],
              ),
            ))
          ],
        ),
      ),
    );  }
}