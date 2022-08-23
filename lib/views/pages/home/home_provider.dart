


import 'package:flutter/widgets.dart';

import '../../../models/classes/category_model.dart';
import '../../../models/classes/product_model.dart';
import '../../../services/mock_servise.dart';

class HomeProvider extends ChangeNotifier {
  int orderNumber = 0;
  List<Category> categories = [];
  List<Product> products = [];

  void getAllCategories() {
    categories = categoriesMock.map((category) => Category.fromJson(category)).toList();
  }

  void getProducts(String categoryId){
    products = productsMock.where((product) => product['categoryId'] == categoryId).map((product) => Product.fromJson(product)).toList();
  }


  int get gridSize {
    if(products.length >= 4){
      return 4;
    }else{
      return products.length;
    }
  }
}