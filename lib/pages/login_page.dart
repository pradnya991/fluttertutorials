import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changButton = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          SizedBox(height: 20.0),
          Text(
            "Welcome $name",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.all(26.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "Username"),
                  onChanged: (value) {
                    name = value;
                    setState(() {});
                  },
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(height: 40.0),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changButton = true;
                    });
                    await Future.delayed(Duration(seconds: 1));
                    Navigator.pushNamed(context, MyRoutes.homeRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    width: changButton ? 60 : 150,
                    height: 50,
                    alignment: Alignment.center,
                    child: changButton
                        ? Icon(Icons.done, color: Colors.white)
                        : Text(
                            "Login",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      shape: changButton ? BoxShape.circle : BoxShape.rectangle,
                      /* borderRadius:
                            BorderRadius.circular(changButton ? 20 : 8) */
                    ),
                  ),
                )
                /* RaisedButton(
                    child: Text("Login"),
                    elevation: 4.0,
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }), */
              ],
            ),
          )
        ]),
      ),
    );
  }
}
