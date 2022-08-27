import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final  imageURL = "https://avatars.githubusercontent.com/u/54960609?s=400&u=964299ada1705dc4a0f31506cb85ee703f4d059f&v=4";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
            margin: EdgeInsets.zero,
            accountName: Text("Muhammad Saad"),
            accountEmail: Text("MuhammadSaad3119@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(imageURL),
            ),
          )
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
            ),
            title: 
            Text(
              "Home",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
            ),
            title: 
            Text(
              "Profile",
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
            ),
            title: 
            Text(
              "Mail me",
              textScaleFactor: 1.2,
            ),
          ),

        ],
      ),
    );
  }
}
