import 'package:filter_theory/mock/products.dart';
import 'package:filter_theory/widgets/product_widget.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: AppBody(),
          appBar: AppBar(
            title: Text('Filter Theory'),
          )),
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: mockProducts.length,
        itemBuilder: (context, index) => ProductWidget(
              data: mockProducts[index],
            ));
  }
}
