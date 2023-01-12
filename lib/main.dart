import 'package:flutter/material.dart';
import 'package:sub_flutter_pemula/pages/login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'wahid',
      theme: ThemeData.light(),
      home: LoginPage(),
    );
  }
}
