import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
   return Material(
      child:Column(
        children: [
          SizedBox(height: 100,),
          Image.asset("assets/images/login.png",
          fit: BoxFit.cover,
          ),
          SizedBox(height: 20,),
          Text("Welcome",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black
            ),
            ),
          SizedBox(height: 10,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
            TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Username",
                labelText: "Username"
              ),
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Enter Password",
                labelText: "Password"
              ),
            )
              ],
            ),
          ),
          SizedBox(height: 15,),
          ElevatedButton(
            onPressed: (){

            },
            child: Text("Login"),
            style: ElevatedButton.styleFrom(
               textStyle: TextStyle(color:Colors.white,fontSize: 15)
            ),
            )
        ],
      )
    );
  }
}