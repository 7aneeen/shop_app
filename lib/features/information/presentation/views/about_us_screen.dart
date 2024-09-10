import 'package:flutter/material.dart';
import 'package:shop_app/core/assets/images.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Center(child: Text("About us",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),)),
          backgroundColor:  Colors.deepPurpleAccent,
        ),
        body:

        Column(
          children: [
            Image.asset("${Images.makeup}",height: 300,width: MediaQuery.of(context).size.width,fit: BoxFit.fill,),
            SizedBox(height: 10,),
           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("About Us:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                 Text("Welcome to Shop App, your ultimate destination for all things makeup and beauty! We are a passionate team of beauty enthusiasts dedicated to bringing you the best products and latest trends for all makeup lovers.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),
                 Text("Our Vision:",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                 Text("We aim to empower everyone to express themselves through makeup, whether you're a beginner or a professional. We're here to support you on your beauty journey.",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400)),

               ],
             ),
           )


          ],
        )

    );
  }
}