import 'package:filter_theory/model/category.dart';
import 'package:filter_theory/model/product_data.dart';

List<ProductData> mockProducts = [
  ProductData(
      name: 'Honda', rategeneral: 3, price: 150, category: Category.category_1),
  ProductData(
      name: 'Toyota',
      rategeneral: 4,
      price: 250,
      category: Category.category_1),
  ProductData(
      name: 'Jeep', rategeneral: 5, price: 180, category: Category.category_2),
  ProductData(
      name: 'Nissan',
      rategeneral: 2,
      price: 120,
      category: Category.category_2),
  ProductData(
      name: 'Volks', rategeneral: 1, price: 80, category: Category.category_3),
];
