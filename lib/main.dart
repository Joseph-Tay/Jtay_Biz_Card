import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
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
                  radius: 50.0,
                  backgroundImage: AssetImage('images/jtay.jpg'),
                ),
                Text(
                  'Joseph Tay',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 30.0,
                    color: Colors.white,
                  ),
                ),
                Text(
                  'Engineer | Program Manager',
                  style: TextStyle(
                    fontFamily: 'RobotoMono',
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 30.0,
                  width: 200.0,
                  child: Divider(
                    color: Colors.blueGrey.shade900,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchCALL();
                  },
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.phone,
                        color: Colors.blueGrey.shade800,
                      ),
                      title: Text(
                        '+1 (949) 407-9728 ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily: 'BreeSerif',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchMAIL();
                  },
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.email,
                        color: Colors.blueGrey.shade800,
                      ),
                      title: Text(
                        'joseph.tqy@gmail.com ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily: 'BreeSerif',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _launchURL();
                  },
                  child: Card(
                    margin:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 50.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.language,
                        color: Colors.blueGrey.shade800,
                      ),
                      title: Text(
                        'joseph-tay.github.io ',
                        style: TextStyle(
                          color: Colors.blueGrey.shade800,
                          fontFamily: 'BreeSerif',
                          fontSize: 18.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ))));
  }
}

_launchURL() async {
  const url = 'https://joseph-tay.github.io';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchMAIL() async {
  const url = 'mailto:joseph.tqy@gmail.com';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

_launchCALL() async {
  const url = 'tel:+1 949 407 9728';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
