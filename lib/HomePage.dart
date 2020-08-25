import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/ToolDev.dart';
import 'package:note/AboutUs.dart';
import 'Page1.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Example',
        home: Scaffold(
            appBar: PreferredSize(
                preferredSize: Size.fromHeight(65.0), // here the desired height
                child: AppBar(
                  title: Text(
                    'Как сделать бота на Python?',
                    style:
                        GoogleFonts.marmelad(color: Colors.white, fontSize: 23),
                  ),
                  backgroundColor: Colors.red,
                )),
            body: Center(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SizedBox(width: 300, height: 50, child:FloatingActionButton.extended(
                      heroTag: 'btn3',
                      onPressed: () {
                        Navigator.of(context).push(_createRoute2());
                      },
                      label: Text(
                        "Инструменты",
                        style: GoogleFonts.marmelad(fontSize: 20),
                      ),
                      backgroundColor: Colors.red[600]), ),
                  SizedBox(height: 60),
                  SizedBox(width: 300, height: 50, child:FloatingActionButton.extended(
                      heroTag: 'btn1',
                      onPressed: () {
                        Navigator.of(context).push(_createRoute());
                        
                      },
                      label: Text(
                        "Начать",
                        style: GoogleFonts.marmelad(fontSize: 25),
                      ),
                      backgroundColor: Colors.red[600])),
                  SizedBox(height: 60),
                  SizedBox(width: 300, height: 50,child:FloatingActionButton.extended(
                    heroTag: 'btn2',
                    onPressed: () {
                      Navigator.of(context).push(_createRoute1());
                    },
                    label: Text(
                      "о нас",
                      style: GoogleFonts.marmelad(fontSize: 25),
                    ),
                    backgroundColor: Colors.red[600],
                    icon: Icon(
                      Icons.bookmark_border,
                      size: 29,
                    ),
                  ) ,)
                ],
              ),
            )));
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page1(),
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
    pageBuilder: (context, animation, secondaryAnimation) => AboutUs(),
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

Route _createRoute2() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => ToolDev(),
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

