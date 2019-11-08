import 'package:flutter/material.dart';
import 'package:zo_appbar/zo_appbar.dart';
import 'package:zo_gradient_icon/zo_gradient_icon.dart';

void main() => runApp(ExampleZOAppBar());

class ExampleZOAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'zo_gradient_icon example',
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: Colors.white,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.black54,
        scaffoldBackgroundColor: Colors.blueGrey,
      ),
      home: new ExampleHome(),
      //routes: Routes.routes,
    );
  }
}

class ExampleHome extends StatefulWidget {
  @override
  _ExampleHomeState createState() => _ExampleHomeState();
}

class _ExampleHomeState extends State<ExampleHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: ZOAppBar(
          8.0,
          'zo_gradient_icon',
          '.',
          'EXAMPLE',
          Colors.white,
          [
            Color(0xFF1565C0),
            Color(0xFF0D47A1),
            Color(0xFF263238),
            Color(0xFF212121),
          ],
          Brightness.dark,
          []),
      body: SafeArea(
        child: Center(
          child: ZOGradientIcon(Icons.phone_iphone, 30.0, [
            Color(0xFF1565C0),
            Color(0xFF0D47A1),
            Color(0xFF263238),
            Color(0xFF212121),
          ]),
        ),
      ),
    );
  }
}
