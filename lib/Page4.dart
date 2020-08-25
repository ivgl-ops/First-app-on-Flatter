import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';
import 'package:note/Page5.dart';

class Page4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Шаг 4'),
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
                        Padding(
                          padding: EdgeInsets.all(5),
                        ),
                        Text(
                          "Добавим туда метод с помощью которого можно получить имя пользователя через vk id.",
                          style: GoogleFonts.marmelad(fontSize: 20),
                        ),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Image.network(
                            'https://sun9-34.userapi.com/3MbeRwyNvoILcNIDNUZ2RRN9NTW8RNUw5PZPFA/2XxIkWus9DU.jpg'),
                        Padding(
                          padding: EdgeInsets.all(20),
                        ),
                        Text(
                          "Это делается с помощью beatifulsoup4.",
                          style: GoogleFonts.marmelad(fontSize: 20),
                        ),
                        Text(
                          'Устанавливаем если его нет: python -m pip install bs4',
                          style: GoogleFonts.marmelad(fontSize: 20),
                        )
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
    pageBuilder: (context, animation, secondaryAnimation) => Page5(),
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
