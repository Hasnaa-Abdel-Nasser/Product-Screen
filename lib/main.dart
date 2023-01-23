import 'package:flutter/material.dart';
import 'package:fluttertask/productScreen/product.dart';

void main() {
  runApp(
      MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: '/productscreen',
          routes:{
            '/productscreen' : (context)=> Product()
          }
      )
  );
}