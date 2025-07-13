import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_dev/models/products.dart';
import 'package:flutter_learning_dev/widgets/drawer.dart';
import 'package:flutter_learning_dev/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async{
    await Future.delayed(Duration(seconds: 2));
    var catalogJson  = await rootBundle.loadString("assets/files/product.json");
    var decodeData = jsonDecode(catalogJson);
    var productsData = decodeData;
    CatalogModel.items = List.from(productsData).map<Item>((item)=>
        Item.fromJson(item)).toList();
    setState(() {});
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: (CatalogModel.items.isNotEmpty)?ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: CatalogModel.items.length,
        itemBuilder: (context, index){
          return ItemWidget(
            item: CatalogModel.items[index],
          );
        },
      ):Center(child:CircularProgressIndicator()),
      drawer: MyDrawer(),
    );
  }
}
