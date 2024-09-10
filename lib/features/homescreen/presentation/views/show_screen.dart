import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/features/homescreen/presentation/views/home_screen.dart';

class ShowScreen extends StatefulWidget {
  const ShowScreen({super.key});

  @override
  State<ShowScreen> createState() => _ShowScreenState();
}

class _ShowScreenState extends State<ShowScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("SHOP APP",style: GoogleFonts.acme(textStyle:TextStyle(fontSize: 30,color: Colors.white),),),centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.only(bottom: 40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 300,
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: CarouselSlider(
                  items: [
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        image: DecorationImage(
                            fit: BoxFit.fill, image: AssetImage("${Images.lipstickimage}")),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage("${Images.liplinerimage}"))),
                    ),
                    Container(
                      margin: EdgeInsets.all(5.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          image: DecorationImage(
                              fit: BoxFit.fill, image: AssetImage("${Images.eyebrowimage}"))),
                    ),
                    // Add more items as needed
                  ],
                  options: CarouselOptions(
                    height: 300,
                    aspectRatio: 16 / 10,
                    viewportFraction: 0.6,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 3),
                    autoPlayAnimationDuration: Duration(milliseconds: 800),
                    autoPlayCurve: Curves.easeInOutBack,
                    enlargeCenterPage: true,
                    scrollDirection: Axis.horizontal,

                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left:30,right: 30),
              child: Text("Shop with us and enjoy the best offers and prices",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
            ),

            MaterialButton(
              color: Colors.deepPurpleAccent,
              onPressed:(){
                Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
              },child: Text("SHOW CATEGORIES",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),)

          ],
        ),
      ),
    );
  }}