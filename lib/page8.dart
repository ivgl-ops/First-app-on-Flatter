import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note/HomePage.dart';

class Page8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text('Шаг 8'),
          actions: <Widget>[
            ButtonTheme(
              minWidth: 50,
              height: 1,
              child: FlatButton(
                onPressed: () {
                  Navigator.of(context).push(_createRoute());
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
                      Text(
                    "То есть теперь мы будем передавать полученное сообщение объекту бота, который вернет нам нужный ответ.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    
                    Text(
                    "Это усложнение программы просто необходимо, если вы хотите дальше улучшить функционал бота:\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "Создайте отдельные пакеты и классы для каждой функции _get_time и _get_weather. Организуйте наследование с общего класса. И каждую новую функцию определяйте в отдельных классах, лучше всего, конечно, еще и разделить на пакеты.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "Добавьте словарь с ключом идентификатора пользователя и значением объекта бота. Таким образом, не придется каждый раз в цикле создавать объект бота. К тому же, это обеспечит пользование несколькими пользователями сразу в сложных конструкциях.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "Таким образом, выбрав хорошую архитектуру кода, вы сможете создать многофункционального бота.\n",
                    style: GoogleFonts.marmelad(fontSize: 20),),
                    Text(
                    "К примеру, я научил своего бота проигрывать музыку на компьютере, открывать сайты сидя с телефона. Присылать рецепты блюд на завтрак, обед, ужин.\nВы же можете редактировать бота под себя.",
                    style: GoogleFonts.marmelad(fontSize: 20),)
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