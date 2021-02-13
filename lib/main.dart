import 'package:flutter/material.dart';

void main (){
  runApp(
    MaterialApp(
      home: Home(),
    )
  );
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: RaisedButton(
          child: Text("AlertaDialog"),
          onPressed: (){
            showDialog(
                context: context,
                builder: (context){
                  return AlertDialog(
                    title: Text("Bem-vindo"),
                    content: Text("Conteudo"),
                    actions: [
                      FlatButton(
                          onPressed: (){
                            Navigator.pop(context);

                          },
                          child: Text("Cancelar")
                      ),
                      FlatButton(
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Text("Confirmar")
                      )
                    ],
                  );
                }
            );
          },
        ),
      ),
    );
  }
}
