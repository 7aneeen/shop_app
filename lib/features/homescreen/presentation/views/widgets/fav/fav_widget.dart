import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/assets/images.dart';
import 'package:shop_app/core/products/products.dart';

class FavWidget extends StatefulWidget {
  const FavWidget({super.key, required this.pfav, required this.fav});
  final Products pfav;
    final List<Products> fav;

  @override
  State<FavWidget> createState() => _FavWidgetState();
}

class _FavWidgetState extends State<FavWidget> {
  bool isOriginalIcon = true;
  void _toggleIcon() {
    setState(() {
      isOriginalIcon = !isOriginalIcon;
      
      if (isOriginalIcon) {
        widget.fav.remove(widget.pfav);
      }
      
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border(bottom: BorderSide(color: Colors.black12, width: 7))),
      child: Padding(
        padding: const EdgeInsets.only(top: 8, bottom: 8, left: 8, right: 12),
        child: Row(mainAxisAlignment: MainAxisAlignment.end, children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Container(
              width: 100,
              height: 115,
              child: CachedNetworkImage(
                imageUrl: "${widget.pfav.imageLink}",
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
                    "${widget.pfav.name}",
                    style: GoogleFonts.aBeeZee(
                        textStyle: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold)),
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text("${widget.pfav.brand}",
                      style: GoogleFonts.aBeeZee(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold))),
                  Text("⭐️ ${widget.pfav.rating}",
                      style: GoogleFonts.abel(
                          textStyle: TextStyle(
                              fontSize: 17, fontWeight: FontWeight.bold))),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(" \$ ${widget.pfav.price}",
                            style: GoogleFonts.abel(
                                textStyle: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold))),
                        IconButton(
                          icon: Icon(
                            size: 22,
                            isOriginalIcon
                                ? Icons.favorite
                                : Icons.favorite_border,
                            color: isOriginalIcon ? Colors.red : Colors.grey,
                          ),
                          onPressed:_toggleIcon,
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
    );
  }
}
