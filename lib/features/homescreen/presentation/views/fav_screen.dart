import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/fav/fav_widget.dart';

class FavScreen extends StatefulWidget {
  FavScreen({super.key, required this.fav});
  final List<Products> fav;
  @override
  State<FavScreen> createState() => _FavScreenState();
}

class _FavScreenState extends State<FavScreen> {
  @override
  Widget build(BuildContext context) {
    print(widget.fav);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("Favourite products",
            style: GoogleFonts.acme(
              textStyle: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )),
      ),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * .8,
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: widget.fav.length,
            itemBuilder: (context, index) {
              return FavWidget(
                pfav: widget.fav[index],
                fav: widget.fav,
              );
            }),
      ),
    );
  }
}
