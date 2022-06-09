import 'package:flutter/material.dart';

class ListPageView extends StatelessWidget {
  ListPageView({Key? key}) : super(key: key);
  final List<String> products = [
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'Mobile',
    'PC',
    'Random',
    'etc'
  ];
  final List<int> colorCodes = <int>[600, 500, 100];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.builder(
              itemCount: products.length,
              itemBuilder: (BuildContext context, int index) {
                return Card(
                  color: Colors.grey,
                  child: Container(
                      padding: EdgeInsets.all(10),
                      child: Text('Product Name: ${products[index]}')),
                );
              })),
    );
  }
}
