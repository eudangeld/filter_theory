import 'package:filter_theory/filter/filterable.dart';
import 'package:filter_theory/model/product_data.dart';

class ByPrice implements Filterable {
  @override
  bool filter(ProductData product) {
    return true;
  }

  @override
  List<ProductData> order(List<ProductData> products) {
    return products
      ..sort((productA, productB) => productA.price.compareTo(productB.price));
  }
}
