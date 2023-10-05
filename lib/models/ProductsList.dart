//Class Product para chamar a listagem de todos os produtos
import 'package:ladiescode/models/eletroeletronicos/Eletronics.dart';
import 'package:ladiescode/models/smartTvs/SmartTv.dart';
import 'package:ladiescode/models/smartphones/Smartphone.dart';

class Product {
  final String title, payments, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite;

  Product({
    required this.images,
    required this.title,
    required this.price,
    required this.payments,
    required this.description,
    this.rating = 0.0,
    this.isFavourite = false,
  });
}

//Listar categoria SmartTvs
List<Product> tvProducts = []..addAll(TvProduct.tvProducts);

//Listar categoria Eletroeletronicos
List<Product> eletronicProducts = []
  ..addAll(EletronicProduct.eletronicProducts);

//Listar categoria Smartphones
List<Product> smartphoneProducts = []
  ..addAll(SmartphoneProducts.smartphoneProducts);

List<Product> allProducts = []
  ..addAll(TvProduct.tvProducts)
  ..addAll(EletronicProduct.eletronicProducts)
  ..addAll(SmartphoneProducts.smartphoneProducts);
