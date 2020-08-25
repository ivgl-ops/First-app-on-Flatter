import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/Page3.dart';

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Шаг 2'),
          actions: <Widget>[
            ButtonTheme(
              minWidth: 50,
              height: 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context,_createRoute());
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
                    'Авторизация. Нам понадобится библиотека vk_api. Авторизоваться в вк можно двумя способами:\n— Как пользователь\n— Как сообщество\n В первом случае надо будет ввести логин и пароль. Во втором случае в группе надо включить "Сообщения сообщества" и создать ключ доступа к API:',
                    style: GoogleFonts.marmelad(fontSize: 20),
                  ),
                  Padding(padding: EdgeInsets.all(20),),
                  Image.network('https://sun9-54.userapi.com/abGCo-BNnu-eB3TofHsNsM_2TB3VvTaHdOB3sg/u0PFXvp1q54.jpg'),
                  Padding(padding: EdgeInsets.all(20),),
                  Image.network('https://sun9-34.userapi.com/8Ldu64GYUXm8v-7sUaydGP0Dqeq7N9byFPqKnA/VGfWWAUW0ew.jpg'),
                  Padding(padding: EdgeInsets.all(20),),
                  Image.network('https://sun9-27.userapi.com/ewDW5uwbZAN2ywO7prM9SCjFmhItc8iunmWChQ/-ak-kf7_Gm0.jpg'),
                  ],),
                  )
                ))
          ],
        ));
  }
}
Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => Page3(),
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