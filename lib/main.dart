import 'package:dog_project/e_commerce_screen_after.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.green,
        useMaterial3: true,
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(fontFamily: 'LeckerliOne', fontSize: 24),
          elevation: 40,
        ),
      ),
      home: ECommerceScreenAfter(),
    );
  }
}
