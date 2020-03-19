import 'package:filter_theory/model/product_data.dart';

abstract class Filterable {
  List<ProductData> order(List<ProductData> products) {}
  bool filter(ProductData product) {}
}
