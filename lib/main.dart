import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                radius:50.0,
                backgroundImage: AssetImage('images/jtay.jpg'),
              ),
              Text(
                'Joseph Tay',
                style: TextStyle(
                  fontFamily:'RobotoMono',
                  fontSize: 30.0,
                  color: Colors.white,
                  ),
                ),
              Text(
                'Engineer | Aspiring Developer',
                style: TextStyle(
                  fontFamily:'RobotoMono',
                  fontSize: 20.0,
                  color: Colors.white,
                  ),
              ),
              SizedBox(
                height:30.0,
                width:200.0,
                child: Divider(
                  color: Colors.blueGrey.shade900,
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical:10.0, horizontal:50.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.phone,
                        color: Colors.blueGrey.shade800,
                      ),
                    title: Text(
                        '+1 (949) 407-9728 ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily:'BreeSerif',
                          fontSize: 20.0,
                        ),
                      ),
                  ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.email,
                        color: Colors.blueGrey.shade800,
                      ),
                    title: Text(
                        'joseph.tqy@gmail.com ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily:'BreeSerif',
                          fontSize: 20.0,
                        ),
                      ),
                  ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                  child: ListTile(
                    leading: Icon(
                        Icons.language,
                        color: Colors.blueGrey.shade800,
                      ),
                    title: Text(
                        'joseph-tay.github.io ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily:'BreeSerif',
                          fontSize: 20.0,
                        ),
                      ),
                  ),
              ),
            ],
          )
        )
      )
    );
  }
}


