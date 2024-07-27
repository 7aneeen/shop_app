import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/presentation/views/product_details_screen.dart';

class CategoryBody extends StatefulWidget {
  const CategoryBody({
    super.key,
    required this.product,
  });
  final Products product;
    static List<Products> fav1 = [];

  @override
  State<CategoryBody> createState() => _CategoryBodyState();
}

class _CategoryBodyState extends State<CategoryBody> {
  Color iconColor = Colors.grey;
  IconData icontype = Icons.favorite_border_outlined;
  bool isOriginalIcon = true;
    
  

  void _toggleIcon() {
    setState(() {
      isOriginalIcon = !isOriginalIcon;
      if (!isOriginalIcon) {
        CategoryBody.fav1.add(widget.product);
      }
      if (isOriginalIcon) {
        CategoryBody.fav1.remove(widget.product);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (_) {
          return ProductDetailsScreen(
            product: widget.product,
          );
        }));
      },
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 150,
        decoration: BoxDecoration(
            color: Colors.white,
            border:
                Border(bottom: BorderSide(color: Colors.black12, width: 7))),
        child: Padding(
          padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 12),
          child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Container(
                width: 100,
                height: 115,
                child: CachedNetworkImage(
                  imageUrl: "${widget.product.imageLink}",
                  placeholder: (context, url) => CircularProgressIndicator(),
                  errorWidget: (context, url, error) =>
                      Image(image: AssetImage(Images.makeup)),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * .35,
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${widget.product.name}",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold)),
                      softWrap: true,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text("${widget.product.brand}",
                        style: GoogleFonts.aBeeZee(
                            textStyle: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Text("⭐️ ${widget.product.rating}",
                        style: GoogleFonts.abel(
                            textStyle: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold))),
                    Expanded(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(" \$ ${widget.product.price}",
                              style: GoogleFonts.abel(
                                  textStyle: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold))),
                          IconButton(
                            icon: Icon(
                              size: 22,
                              isOriginalIcon
                                  ? Icons.favorite_border
                                  : Icons.favorite,
                              color: isOriginalIcon ? Colors.grey : Colors.red,
                            ),
                            onPressed: _toggleIcon,
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
