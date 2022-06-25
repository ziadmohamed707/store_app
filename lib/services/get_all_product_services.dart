import 'dart:convert';

import 'package:http/http.dart';

import '../helper/api.dart';
import '../models/product_model.dart';

class AllProductsServices {
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data =
    await Api().get(url: 'https://fakestoreapi.com/products');

    List<ProductModel> productsList = [];
    for (int i = 0; i < data.length; i++) {
      productsList.add(
        ProductModel.fromJson(data[i]),
      );
    }
    return productsList;
  }
}


// import 'dart:convert';
// import 'dart:core';
// import 'package:http/http.dart';
//
// import '../helper/api.dart';
// import '../models/product_model.dart';
// import 'package:http/http.dart' as http;
//
// class AllProductsServices {
//   Future<List<ProductModel>> getAllProducts() async {
//     List<dynamic> data =
//         await Api().get(url: 'https://fakestoreapi.com/products');
//     List<ProductModel> productList = [];
//     for (int i = 0; i < data.length; i++) {
//       productList.add(
//         ProductModel.fromJson(data[i]),
//       );
//     }
//     return productList;
//   }
// }
