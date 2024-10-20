import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'home_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  void _login() {
    if (_usernameController.text == "admin" && _passwordController.text == "admin") {
      // Navigasi ke home screen jika login sukses
      context.push((context) => HomeScreen());
    } else {
      VxToast.show(context, msg: "Username atau password salah!");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: VStack([
        "Login".text.xl4.bold.makeCentered().py20(),
        
        // Username Input
        TextFormField(
          controller: _usernameController,
          decoration: InputDecoration(
            labelText: "Username",
            border: OutlineInputBorder(),
          ),
        ).p16(),

        // Password Input
        TextFormField(
          controller: _passwordController,
          obscureText: true,
          decoration: InputDecoration(
            labelText: "Password",
            border: OutlineInputBorder(),
          ),
        ).p16(),

        // Login Button
        ElevatedButton(
          onPressed: _login,
          child: "Login".text.make(),
        ).wFull(context).p16(),
      ]).centered(),
    );
  }
}
