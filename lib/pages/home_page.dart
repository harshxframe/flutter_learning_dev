import 'package:flutter/material.dart';
import 'package:flutter_learning_dev/models/products.dart';
import 'package:flutter_learning_dev/widgets/drawer.dart';
import 'package:flutter_learning_dev/widgets/item_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});


  @override
  Widget build(BuildContext context) {
    final String days = "Hello Again";
    final dummyList = List.generate(10, (index) => CatalogModel.items[0]);
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body:ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: dummyList.length,
        itemBuilder: (context, index){
          return ItemWidget(
            item: dummyList[index],
          );
        },
      ),
      drawer: MyDrawer(),
    );
  }
}
