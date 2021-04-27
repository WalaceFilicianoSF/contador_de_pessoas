import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Contador de Pessoas",
    home: Home() ));
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText="Pode Entrar!";

  void _changePeople(int delta){
    setState(() {
      _people += delta;

      if(_people < 0){
        _infoText = "Mundo Invertido?!";
      }else if(_people <= 10){
        _infoText="Pode Entrar!";
      }else{
        _infoText = "Lotado!";
      }
    });
    
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children:<Widget>[
        Image.asset(
          "images/restaurant.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Pessoas: $_people",
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
            // ignore: missing_required_param, deprecated_member_use
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[            // ignore: deprecated_member_use
                Padding(
                  padding: EdgeInsets.all(10.0),// ignore: deprecated_member_use
                  child: FlatButton(// ignore: deprecated_member_use
                    child: Text(
                        "+1",
                        style: TextStyle(fontSize: 40.0, color: Colors.white)
                    ),
                    onPressed: () {
                      _changePeople(1);
                    },
                  ),
                  // ignore: deprecated_member_use,
                ),
                // ignore: deprecated_member_use
                Padding(
                  padding: EdgeInsets.all(10.0),// ignore: deprecated_member_use
                  child: FlatButton(// ignore: deprecated_member_use
                    child: Text(
                      "-1",
                      style: TextStyle(fontSize: 40.0, color: Colors.white),
                    ),
                    onPressed: () {
                     _changePeople(-1);
                    },
                  ),
                  // ignore: deprecated_member_use,
                ),
              ],
            ),

            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.white,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0),
            )
          ],
        )
      ],

    );
  }
}

