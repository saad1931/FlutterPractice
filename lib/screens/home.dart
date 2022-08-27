import 'package:flutter/material.dart';
import 'package:flutter_challenge/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        centerTitle: true,
        title:Text("Catalog App",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),)
       ),
       body: Center(
         child: Container(
          child: Text("Welcome to the app"),
         ),
       ),
       drawer: MyDrawer(),

    );
  }
}