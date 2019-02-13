import 'package:flutter/material.dart';
import 'package:unit_converter_app/category_screen.dart';

void main() => runApp(UnitConverterApp());

class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Unit Converter',
        home: CategoryScreen());
  }
}
