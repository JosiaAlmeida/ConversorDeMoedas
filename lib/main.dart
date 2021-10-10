import 'package:conversordemoedas/provider/app_provider.dart';
import 'package:conversordemoedas/views/Home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appProvider.instance, 
      builder: (context, child){
        return MaterialApp(
          home: Home(),
        );
      }
    );
  }
}