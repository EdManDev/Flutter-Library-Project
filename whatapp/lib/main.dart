import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    return new MaterialApp(
      theme: new ThemeData(
      primaryColor: Colors.teal[900],),                         //top bar color
      debugShowCheckedModeBanner: false,  //disable baner debug
      title: 'Welcome to Flutter',
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Whats App'),
        ),
        body: new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.album),
                title: const Text('The Enchanted Nightingale'),
                subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              new ButtonTheme.bar( // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () { /* ... */ },
                    ),
                    new FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () { /* ... */ },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}