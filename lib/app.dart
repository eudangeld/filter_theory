import 'package:filter_theory/mock/products.dart';
import 'package:filter_theory/model/app_state.dart';
import 'package:filter_theory/model/product_data.dart';
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
          body: AppState(
            child: AppBody(),
          ),
          appBar: AppBar(
            title: Text('Filter Theory'),
          )),
    );
  }
}

class AppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    AppState.of(context).products.add(mockProducts);
    return StreamBuilder<List<ProductData>>(
        stream: AppState.of(context).products,
        builder: (context, snapshot) {
          if (snapshot.hasData && snapshot.data.isNotEmpty) {
            return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (context, index) => ProductWidget(
                      data: snapshot.data[index],
                    ));
          }

          return Container();
        });
  }
}
