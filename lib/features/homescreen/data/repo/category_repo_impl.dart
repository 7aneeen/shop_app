import 'package:dartz/dartz.dart';
import 'package:shop_app/core/network/apiService.dart';
import 'package:shop_app/core/errors/failler.dart';
import 'package:shop_app/core/products/products.dart';
import 'package:shop_app/features/homescreen/data/repo/category_repo.dart';

class CategoryRepoImpl implements CategoryRepo {
  final Apiservice apiservice;
  final String p;
  final List<String> allItem;
  CategoryRepoImpl(this.apiservice, this.p, this.allItem);
  List<dynamic> data = [];
  List<Products> data2 = [];

  @override
  Future<Either<Failler, List<Products>>> fetchData() async {
    try {
      data = await apiservice.get(parameters: "product_type=$p");
      for (var i in data) {
        data2.add(Products.fromJson(i));
      }
      for (var i in data2) {
        i.brand != null ? allItem.add("${i.brand}") : "";
        i.brand != null ? allItem.add("${i.name}") : "";
      }
      print(allItem);

      return right(data2);
    } catch (e) {
      return left(ServerError(e.toString()));
    }
  }
}
