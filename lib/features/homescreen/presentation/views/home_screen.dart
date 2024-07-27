import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/home_widget/home_screen_gridview.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      
      appBar: AppBar(
        title: Text(
          "SHOP APP",
          style:GoogleFonts.acme(textStyle:TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),) 
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: CategoryList(),
    );
  }
}
//0xb72227, 0xBB656B, 0x8E4140, 0xA12A33, 0x904550, 0x452222, 0x7C3F35
