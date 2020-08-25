import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';

class AboutUs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('О нас'),
          actions: <Widget>[
            ButtonTheme(
              minWidth: 50,
              height: 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => HomePage()));
                },
                child: Icon(Icons.home, color: Colors.white, size: 25),
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
                      Row(children: [Text('Приложение написанно на Flutter.', 
                      style: GoogleFonts.marmelad(fontSize: 20, )),],),
                      Padding(padding: EdgeInsets.all(10),),
                      Row(children: [
                        Padding(padding: EdgeInsets.all(0),),
                        Text('Версия 1.0.0', 
                        style: GoogleFonts.marmelad(fontSize: 20, )),
                      ],)
                  ],),
                  )
                ))
          ],
        ));
  }
}
