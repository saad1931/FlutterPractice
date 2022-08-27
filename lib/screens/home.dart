import 'package:flutter/material.dart';
import 'package:flutter_challenge/widgets/drawer.dart';

class Home extends StatelessWidget {
  const Home({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: Center(child: Text("Home"))
       ),
       body: Center(
         child: Container(
          child: Text("Welcome to thr app"),
         ),
       ),
       drawer: MyDrawer(),

    );
  }
}