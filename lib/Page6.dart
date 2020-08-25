import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';
import 'package:note/Page7.dart';

class Page6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Шаг 6'),
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
                    child: Column(children: [
                      Padding(padding: EdgeInsets.all(5),),
                      Text(
                    "Измените параметр _get_weather на нужный город, в последствии этот метод можно будет вызывать с указанием города, а по умолчанию будет ваше указанное значение.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "С помощью этих методов мы сможем получить время и погоду. Эти методы вырезаны из моего основного проекта бота. Следует организовать их в отдельных пакетах и классах, применяя наследование. Но ради примера работы, я решил вместить все это в один класс бота, что конечно плохо.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "Создадим основной метод new_message, который будет обрабатывать сообщение пользователя и возвращать ответ:\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Padding(padding: EdgeInsets.all(5),),
                  Image.network('https://sun9-27.userapi.com/V1nATm0t9_gM7bqL9a1eveqlbvg2K8gI0c2ZBg/zanykqCHf-M.jpg'),
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
    pageBuilder: (context, animation, secondaryAnimation) => Page7(),
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
