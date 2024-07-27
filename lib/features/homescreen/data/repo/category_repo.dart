import 'package:dartz/dartz.dart';
import 'package:shop_app/core/errors/failler.dart';
import 'package:shop_app/core/products/products.dart';

abstract class CategoryRepo {
    Future<Either<Failler, List<Products>>> fetchData();

}