import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';
import 'package:note/Page6.dart';

class Page5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Шаг 5'),
          actions: <Widget>[
            ButtonTheme(
              minWidth: 50,
              height: 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute1());
                },
                child: Icon(Icons.home, color: Colors.white, size: 25),
              ),
            ),
            ButtonTheme(
              minWidth: 50,
              height: 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
                },
                child: Icon(Icons.arrow_forward, color: Colors.white, size: 25),
              ),
            ),
          ],
        ),
        body: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Expanded(
                flex: 1,
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Container(
                    child: Column(children: [
                      Padding(padding: EdgeInsets.all(5),),
                      Text(
                    "С помощью beatifulsoup4 создадим еще несколько методов:",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Padding(padding: EdgeInsets.all(20),),
                  Image.network('https://sun9-45.userapi.com/UNd4JkgPm2WG9y4OGXZIAzpVoSsnAxuhrRQy0g/-Sr3Ej7-Aok.jpg'),
                  Padding(padding: EdgeInsets.all(20),),
                  Image.network('https://sun9-20.userapi.com/n6fACG7SkXw8kwkRUkKBeLFrjY4Y-N36a1d-Dw/9XKM5bQqjK8.jpg'),
                    ],
                  ),
                  ),
                ))
          ],
        ));
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page6(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}
Route _createRoute1() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      var begin = Offset(1.0, 0.0);
      var end = Offset.zero;
      var curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}