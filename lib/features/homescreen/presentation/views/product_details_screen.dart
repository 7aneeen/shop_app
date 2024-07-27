import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/product_widget/product_d_widget.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key, required this.product});
  //final String title;
  final Products product;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text("${product.name}",style: GoogleFonts.acme(textStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30)),),
        centerTitle: true,
      ),
      body: ProductWidget(product: product),
    );
  }
}
