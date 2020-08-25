import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';
import 'package:note/Page2.dart';

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Шаг 1'),
          backgroundColor: Colors.red,
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
                    child: Column(
                      children: [
                        Padding(padding: EdgeInsets.all(5),),
                        Text(
                        'Для начала нужно установить библиотеку vk_api. Требуется открыть cmd и прописать команду pip install vk_api.',
                        style: GoogleFonts.marmelad(fontSize: 20), 
                        ),
                        Padding(padding: EdgeInsets.all(20),),
                        Image.network('https://i.ibb.co/cyfFTGB/Screenshot-1.png')
                      ],
                    )
                  )
                ))
          ],
        ));
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page2(),
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