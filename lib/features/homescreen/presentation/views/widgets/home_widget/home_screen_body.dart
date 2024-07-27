import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/features/homescreen/presentation/views/category_screen.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key, required this.name, required this.image,});

  final String name;
  final String image;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(25),
        child: InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (_) {
              return Categoryscreen(
                c_name: name,
                prmtr: name,
              
              );
            }));
          },
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                width: double.infinity,
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage(image))),
              ),
              Container(
                width: double.infinity,
                height: 40,
                child: Center(
                  child: Text(
                    name,
                    style: GoogleFonts.acme(
                        textStyle:
                            TextStyle(fontSize: 25, color: Colors.white)),
                  ),
                ),
                color: Colors.black54,
              )
            ],
          ),
        ),
      ),
    );
    //  Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Container(
    //     width: double.infinity,
    //     height: 270,
    //     decoration: BoxDecoration(
    //               color: Colors.white,
    //                 border: Border.all(color: Colors.grey),
    //               borderRadius: BorderRadius.circular(15),),
    //     child: Column(
    //       children: [
    //         Container(
    //           width: double.infinity,
    //           height: 130,
    //           decoration: BoxDecoration(
    //               borderRadius: BorderRadius.circular(15),
    //               image: DecorationImage(
    //                   fit: BoxFit.fill, image: AssetImage(image)))),
    //         SizedBox(
    //           height: 5,
    //         ),
    //         Center(
    //           child: Text(
    //             name,
    //             style:GoogleFonts.acme(textStyle: TextStyle(fontSize: 26, color: Colors.black)) ,
    //           ),
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
