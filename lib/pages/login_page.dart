import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/routes.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(children: [
          Image.asset("assets/images/login.png", fit: BoxFit.cover),
          SizedBox(height: 20.0),
          Text(
            "Welcome",
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
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password"),
                ),
                SizedBox(height: 40.0),
                RaisedButton(
                    child: Text("Login"),
                    elevation: 4.0,
                    textColor: Colors.white,
                    color: Colors.deepOrange,
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    }),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
