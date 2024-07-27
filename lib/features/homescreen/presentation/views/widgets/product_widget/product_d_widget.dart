import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/category_widget/color_ballet_list.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key, required this.product});
  final Products product;

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              //width: MediaQuery.of(context).size.width * .4,
              height: 190,
              width: 180,
              child: CachedNetworkImage(
              imageUrl: "${widget.product.imageLink}",
              placeholder: (context, url) => CircularProgressIndicator(),
              errorWidget: (context, url, error) => Image(image: AssetImage(Images.makeup)),
              fit: BoxFit.cover,
            ),
              // decoration: BoxDecoration(
              //     image: DecorationImage(
              //         image: NetworkImage("${widget.product.imageLink}"),
              //         fit: BoxFit.cover)),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Brand : ${widget.product.brand}",
              style: GoogleFonts.asapCondensed(
                  textStyle:
                      TextStyle(fontSize: 27, fontWeight: FontWeight.w600)),
            ),
            Text("Price : \$ ${widget.product.price}",
                style: GoogleFonts.asapCondensed(
                    textStyle:
                        TextStyle(fontSize: 27, fontWeight: FontWeight.w600))),
            Text("Rating : ⭐️ ${widget.product.rating}",
                style: GoogleFonts.asapCondensed(
                    textStyle:
                        TextStyle(fontSize: 27, fontWeight: FontWeight.w600))),
            SizedBox(
              height: 15,
            ),
            Container(
              alignment: Alignment.center,
              width: 90,
              height: 50,
              child: Text(
                "Buy Now",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
              color: Colors.deepPurpleAccent,
            ),
            SizedBox(
              height: 15,
            ),
            ColorsballetListview(p7:widget.product ,),
            SizedBox(
              height: 15,
            ),
            Divider(
              color: Colors.grey, // Set the color of the divider
              thickness: 2, // Set the thickness
              indent: 5, // Left spacing
              endIndent: 5, // Right spacing
            ),
            Text("Description : ",style: GoogleFonts.acme(textStyle: TextStyle(fontSize: 30)),),
            Text("${widget.product.description}",style: GoogleFonts.aBeeZee(textStyle: TextStyle(color: Colors.black54,fontSize: 16,fontWeight: FontWeight.w600)),)
            
          ],
        ),
      ),
    );
  }
}
