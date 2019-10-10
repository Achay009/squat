import 'package:flutter/material.dart';
import './screens/index.dart';



void main()=> runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
       // primaryColor: new Color(0xffFF78AE),
       // accentColor: new Color(0xffFF78AE)
      ),
      title: 'SQUAT',
      home: SquatHome(),
    );
  }
}
