import 'package:dio/dio.dart';
import 'package:shop_app/core/network/apiService.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/data/repo/category_repo_impl.dart';
import 'package:shop_app/features/homescreen/presentation/views/search_screen.dart';
import 'package:shop_app/features/homescreen/presentation/views/widgets/category_widget/category_body.dart';

class CategoryListview extends StatefulWidget {
   CategoryListview({
    super.key,
    required this.prmtr,
  });
  final String prmtr;
final List<String> allItems = [];
  @override
  State<CategoryListview> createState() => _CategoryListviewState();
}

class _CategoryListviewState extends State<CategoryListview> {
  // List<dynamic> data = [];
  // List<dynamic> data2 = [];
  final TextEditingController _searchController = TextEditingController();
//  final FocusNode _focusNode = FocusNode();
  
  //List<String> _filteredItems = [];

  void _navigateToSearchScreen() async {
    final selectedValue = await Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SearchScreen(options: widget.allItems),
      ),
    );
    if (selectedValue != null) {
      _searchController.text = selectedValue;
    }
  }

  List<Products> data = [];
  

  @override
  void initState() {
    super.initState();
    getalldata();
  }

  Future<void> getalldata() async {
    try {
      var result = await CategoryRepoImpl(Apiservice(Dio()),widget.prmtr,widget.allItems).fetchData();
      result.fold(
            (failure) {
          print("failed to fetch data: $failure");
          setState(() {
            data = [];
          });
        },
            (item) {
          setState(() {
            data = item;
          });
        },
      );
    } catch (e) {
      print("failed to fetch data: $e");
      setState(() {
        data = [];
      });
    }
  }


  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   fetchData();
    
  // }

//widget.prmtr.toLowerCase()
  // fetchData() async {
  //   data = await Apiservice(Dio())
  //       .get(parameters: "product_type=${widget.prmtr.toLowerCase()}");
  //   //  print(data[0]["product_type"]);
  //   if (!mounted) return;
  //   setState(() {
  //     for (var i in data) {
  //       data2.add(Products.fromJson(i));
  //     }
  //   });
  //   for (var i in data2) {
  //     i.brand != null ? _allItems.add(i.brand) : "";
  //     i.brand != null ? _allItems.add(i.name) : "";
  //   }
  //   print(_allItems);
  //   return data2;
  // }

   @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
        TextField(
            cursorColor: Colors.black,
            controller: _searchController,
          //  focusNode: _focusNode,
            decoration: InputDecoration(
                hintText: 'Search...',
                prefixIcon: Icon(Icons.search),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black))),
             onTap: _navigateToSearchScreen,
          ),
        
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * .8,
            child: ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return CategoryBody(
                    product: data[index],
                  );
                }),
          )
        ],
      ),
    );
  }
}

  
