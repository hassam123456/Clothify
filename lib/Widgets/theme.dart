import 'package:flutter/material.dart';

class MyTheme {

 static ThemeData lightTheme(BuildContext context) =>
     ThemeData(
         primarySwatch:  Colors.cyan,
 appBarTheme: AppBarTheme(

 brightness: Brightness.light,
   elevation: 0.0,
 iconTheme: IconThemeData(color: Colors.black),
 textTheme: Theme.of(context).textTheme,

 ));
 static ThemeData darkTheme(BuildContext context) =>
     ThemeData(
           textTheme: Theme.of(context).textTheme,

         );



}
