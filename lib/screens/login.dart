import 'package:flutter/material.dart';
import 'package:flutter_challenge/utils/routes.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String userName = "";
  bool changeButton = false;

  final _formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Material(
        child: SingleChildScrollView(
      child: Form(
        key: _formkey,
        child: Column(
          children: [
            SizedBox(
              height: 100,
            ),
            Image.asset(
              "assets/images/login.png",
              fit: BoxFit.cover,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $userName",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                    onChanged: (value) {
                      userName = value;
                      setState(() {});
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Username cannot be empty!";
                      }
                      return null;
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                      validator: (value) {
                      if (value!.isEmpty) {
                        return "Password cannot be empty!";
                      }
                      else if (value.length<6) {
                        return "Password must be greater than 6 characters!";
                      }
                      return null;
                    },
                  )
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Material(
                color: Colors.deepPurple,
                        borderRadius:
                            BorderRadius.circular(changeButton ? 50 : 8), //false  -- true
              child: InkWell(
                onTap: () async {
                  if(_formkey.currentState!.validate()){
                    setState(() {
                    changeButton = true;
                  });
                  await Future.delayed(Duration(seconds: 1));
                  await Navigator.pushNamed(context, MyRoutes.HomeRoute);
                  setState(() {
                    changeButton = false;
                  });
                  }
                  
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 1),
                  height: 50,
                  width: 140,
                  alignment: Alignment.center,
                  child: changeButton
                      ? Icon(
                          Icons.done,
                          color: Colors.white,
                        )
                      : Text(
                          "Login",
                          style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                  // decoration: BoxDecoration(
                  //   color: Colors.deepPurple,
                  //   shape: changeButton ? BoxShape.circle : BoxShape.rectangle,
                  //   // borderRadius: BorderRadius.circular(8),
                  // ),
                ),
              ),
            )
            // ElevatedButton(
            //   onPressed: () {
            //     Navigator.pushNamed(context, MyRoutes.HomeRoute);
            //   },
            //   child: Text("Login"),
            //   style: ElevatedButton.styleFrom(
            //       minimumSize: Size(100, 50),
            //       textStyle: TextStyle(color: Colors.white, fontSize: 15)),
            // )
          ],
        ),
      ),
    ));
  }
}
