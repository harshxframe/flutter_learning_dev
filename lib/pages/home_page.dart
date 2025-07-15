import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_learning_dev/models/products.dart';
import 'package:flutter_learning_dev/widgets/drawer.dart';
import 'package:flutter_learning_dev/widgets/item_widget.dart';
import 'package:flutter_learning_dev/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

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
      backgroundColor: Colors.grey,
      body: SafeArea(child:
      Container(
        padding: Vx.m32,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CataLogHeader(),
            if(CatalogModel.items!= null && CatalogModel.items.isNotEmpty)
              CataLogList().expand()
            else
              Center(
                  child: CircularProgressIndicator()
              )

          ],
        )
      ))
    ,
      drawer: MyDrawer(),
    );
  }
}

class CataLogHeader extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        "Catalog App".text.xl5.bold.color(MyTheme.creamColor).make(),
        "Trending Products".text.xl2.make()
      ],
    );
  }



}

class CataLogList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: CatalogModel.items.length,
      itemBuilder: (context, index){
        final cataLog = CatalogModel.items[index];
        return CataLogItem(catalog:cataLog);
      },
    );
  }


}


class CataLogItem extends StatelessWidget{
  final Item catalog;
  const CataLogItem({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
     return VxBox(
       child: Row(
         children: [Image.network(catalog.image).box.p16.color(Vx.red50).rounded.make().p16()],
       )
     ).white.rounded.square(150).white.square(100).make().py16();
  }
}









