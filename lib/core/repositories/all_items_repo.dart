import 'package:Arzon/core/repositories/models/item_repo_model.dart';
import 'package:dio/dio.dart';

class AllItemsRepo {
  Future<List<ItemModel>> getAllItemsList() async {
    final response = await Dio().get("https://fakestoreapi.com/products");
    final List<dynamic> data = response.data;

    List<ItemModel> products = data.map((e) => ItemModel.fromJson(e)).toList();

    print('DATALIST ------> $products');
    return products;
  }
}
