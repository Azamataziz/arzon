import 'dart:convert';

import 'package:dio/dio.dart';

class AllItemsRepo {

  final raw = {
    "get_products": 1019,
  };
  Future<void> getAllItemsList() async {
    final response = await Dio().post(
      "https://catalog.korzinka.uz/api/mobile/catalogs/category/products",
      
      data: jsonEncode(raw),
    );
    print(response.toString());
  }
}
