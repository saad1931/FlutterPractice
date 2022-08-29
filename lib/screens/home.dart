import 'package:flutter/material.dart';
import 'package:flutter_challenge/models/catalog.dart';
import 'package:flutter_challenge/widgets/ItemWidget.dart';
import 'package:flutter_challenge/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dummylist=List.generate(10,(index) => CatalogModel.items[0]);
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title:Text("Catalog App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
       ),
       body: Padding(
         padding: const EdgeInsets.all(16.0),
         child: ListView.builder(
          itemCount: dummylist.length,
          itemBuilder: (context, index) {
            return ItemWidget(item: dummylist[index]);
          },
         ),
       ),
       drawer: MyDrawer(),

    );
  }
}