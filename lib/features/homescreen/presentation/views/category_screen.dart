import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/features/homescreen/presentation/views/fav_screen.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/category_widget/category_body.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/category_widget/category_listview.dart';

class Categoryscreen extends StatelessWidget {
  Categoryscreen({
    super.key,
    required this.c_name,
    required this.prmtr,
  });
  final String c_name;
  final String prmtr;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (_) {
                  return FavScreen(
                    fav: CategoryBody.fav1,
                  );
                }));
              },
              icon: Icon(Icons.favorite))
        ],
        title: Text(
          "$c_name products",
          style: GoogleFonts.acme(
              textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
        ),
        centerTitle: true,
        backgroundColor: Colors.deepPurpleAccent,
      ),
      body: CategoryListview(
        prmtr: prmtr,
      ),
    );
  }
}
