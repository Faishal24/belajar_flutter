import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';
import 'login_screen.dart';
import "package:belajar_flutter/widgets/card.dart";

class HomeScreen extends StatelessWidget {
  void _logout(BuildContext context) {
    // Navigasi ke layar login setelah logout
    context.pop();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Home".text.make(),
        actions: [
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () => _logout(context),
          ),
        ],
      ),
      body: VStack([
        "Welcome to Home Screen".text.xl4.bold.makeCentered().py20(),

        ElevatedButton(
          onPressed: () => _logout(context),
          child: "Logout".text.make(),
        ).wFull(context).p16(),

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
      ]).centered(),
    );
  }
}
