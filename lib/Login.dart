import 'package:flutter/cupertino.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  // variables pour les champs de texte
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  bool flag = false;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.only(
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
                  // champ de texte pour le nom d'utilisateur
                  controller: _usernameController,
                  obscureText: false,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon:
                        Icon(Icons.person, color: Colors.lightBlueAccent),
                    label: Text('Username'),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                TextFormField(
                  // champ de texte pour le mot de passe
                  controller: _passwordController,
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      borderSide:
                          const BorderSide(width: 1, style: BorderStyle.none),
                    ),
                    filled: true,
                    fillColor: Colors.grey[200],
                    prefixIcon:
                        Icon(Icons.password, color: Colors.lightBlueAccent),
                    label: Text('Password'),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                ElevatedButton(
                  // un seul bouton ou un seul enfant
                  onPressed: () {
                    setState(() {
                      print('User : ${_usernameController.text}');
                      print('Password : ${_passwordController.text}');
                      if (_usernameController.text == 'admin' &&
                          _passwordController.text == 'admin') {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const Home(),
                        ));
                      } else {
                        flag = true;
                      }
                    });
                  },
                  child: const Text('Ingresar'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.deepPurple,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    fixedSize: Size(size.width * 0.6, size.height * 0.07),
                  ),
                ),
                SizedBox(height: size.height * 0.05),
                flag ? const Text(
                        //'User : ${_usernameController.text} \n Password : ${_passwordController.text}')
                        'Usuario o contraseña incorrecta',
                        style: TextStyle(fontSize: 15, color: Colors.red),
                ) : Container()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
