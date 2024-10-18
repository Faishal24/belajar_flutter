import "package:belajar_flutter/widgets/card.dart";
import 'package:flutter/material.dart';
import "package:velocity_x/velocity_x.dart";

void main() async {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _FormState createState() => _FormState();
}

class _FormState extends State<MyApp> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  void _submitForm() {
    print("Username: ${_usernameController.text}");
    print("Password: ${_passwordController.text}");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter UI',
        home: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter VelocityX UI'),
          ),
          body: VStack([
            // Title
            "Login Form".text.xl4.bold.makeCentered().p20(),

            // Username TextField
            TextFormField(
              controller: _usernameController,
              decoration: const InputDecoration(
                labelText: 'Username',
                border: OutlineInputBorder(),
              ),
            ).p16(),

            // Password TextField
            TextFormField(
              controller: _passwordController,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ).p16(),

            // Submit Button
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3),
                ),
              ),
              child: "Submit".text.make(),
            ).wFull(context).h(55).p16(),

            Center(
                child: VStack([
              // Title
              "Test Card Tugas".text.xl4.bold.makeCentered().p20(),

              const HStack([
                CardWidget(
                  title: "Tugas 1",
                  description: "Ini deskripsi dari tugas",
                  date: "2024-10-18",
                ),
                CardWidget(
                  title: "Tugas 2",
                  description: "Ini deskripsi dari tugas",
                  date: "2024-10-18",
                ),
              ]).centered()
            ]))
          ]).scrollVertical(),
        ));
  }
}
