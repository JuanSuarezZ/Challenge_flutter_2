import 'package:challenge2/pages/home_page.dart';
import 'package:flutter/material.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'home',
      routes: {
        'home' : ( _ ) => Home(),
      }, 
      theme: ThemeData(
      
        textTheme: TextTheme(
          headline3: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.black),
          headline5: TextStyle(fontSize: 26, color: Colors.black,fontWeight: FontWeight.bold, ),
          headline6: TextStyle(fontSize: 15, color: Colors.black45),
        ),
      ),
    );
  }
}