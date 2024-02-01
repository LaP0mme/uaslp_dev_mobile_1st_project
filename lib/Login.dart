import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      body: Stack(
        children: [
          Padding(padding: EdgeInsets.only(
              left: size.width * 0.15, right: size.width * 0.15),
            child: Column(
              children: [
                Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('LOGIN',
                        style: TextStyle(fontSize: 25, color: Colors.red))
                  ],
                ),
                TextFormField(
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(width: 1, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(
                        Icons.person, color: Colors.lightBlueAccent),
                    label: Text('Username'),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                      const BorderSide(width: 1, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon: Icon(
                        Icons.password, color: Colors.lightBlueAccent),
                    label: Text('Password'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
