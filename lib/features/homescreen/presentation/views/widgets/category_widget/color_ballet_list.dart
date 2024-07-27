import 'package:flutter/material.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/category_widget/color_ballet_widget.dart';

class ColorsballetListview extends StatefulWidget {
  const ColorsballetListview({super.key, required this.p7});
  final Products p7;
  @override
  State<ColorsballetListview> createState() => _ColorsballetListviewState();
}

class _ColorsballetListviewState extends State<ColorsballetListview> {
  List<String> productcolors = [];

  void initState() {
    //getcolors();
    super.initState();
    getColor();
  }

  // getcolors() async {
  //   data = await Apiservice(Dio()).get(parameters:"");
  //   for(var i in data){
  //     productcolors.add(ProductColor.fromJson(i));
  //   }
  //   setState(() {});
  //   return productcolors;
  // }
  getColor() {
    if (widget.p7.productColors != null) {
      for (var i in widget.p7.productColors!) {
        productcolors.add("0x99${i.hexValue!.substring(1)}");
      }
    } else {
      for (int i = 0; i < widget.p7.productColors!.length; i++) {
        productcolors.add("0xFF000000");
      }
      ;
    }
    print(productcolors);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return ColorsballetWidget(color: productcolors[index]);
        },
        itemCount: productcolors.length,
      ),
    );
  }
}
