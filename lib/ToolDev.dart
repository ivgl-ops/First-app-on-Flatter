import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_dialog_box/animated_dialog_box.dart';

class ToolDev extends StatefulWidget {
  ToolDev({Key key}) : super(key: key);

  @override
  _ToolDevState createState() => _ToolDevState();
}

class _ToolDevState extends State<ToolDev> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
            
        ],
        title: Text('Рекомендуемые инструменты', style: GoogleFonts.marmelad(fontSize: 20)),
        backgroundColor: Colors.red[600],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            SizedBox(height: 200,),
            FloatingActionButton.extended(onPressed: () async{
              await animated_dialog_box.showCustomAlertBox(
                  context: context,
                  firstButton: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  yourWidget: Container(child: Column(children: [
                    Text('Рекомендуется использовать VS Code или Pycharm. В последующих обновлениях мы добавим пост о том, что выбрать лучше.'),
                  ],),));
            },
            heroTag: "btn1",
            label: Text('Среды разработки', style: GoogleFonts.marmelad(fontSize: 20)),
            backgroundColor: Colors.red[500]),
            SizedBox(height: 35,),
            FloatingActionButton.extended(onPressed: ()async{
              await animated_dialog_box.showCustomAlertBox(
                  context: context,
                  firstButton: MaterialButton(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40),
                    ),
                    color: Colors.white,
                    child: Text('Ok'),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                  yourWidget: Container(child: Column(children: [
                    Text('Рекомендуется скачать python 3.7 и выше'),
                  ],),));},
            heroTag: "btn2",
            label: Text('Рекомендуемая версия Python', style: GoogleFonts.marmelad(fontSize: 20),),
            backgroundColor: Colors.red[500], ),
        ],)
      ,),
    );
  }
}
