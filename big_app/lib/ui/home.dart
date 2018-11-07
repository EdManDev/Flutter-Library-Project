import 'package:flutter/material.dart';

class Home extends StatelessWidget {
/////Dart private method snippet/dpmt/
  void _onPress() {
    print("Search Tapped!");
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          backgroundColor: Colors.deepPurple[900],
          title: new Text("EdMan"),
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search), onPressed: _onPress),
            new IconButton(
              icon: new Icon(Icons.menu),
              onPressed: () => debugPrint("Icon Tapped!"),
            )
          ],
        ),
        backgroundColor: Colors.grey[400],
        body: new Card(
          child: new Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              const ListTile(
                leading: const Icon(Icons.movie),
                title: const Text('The Enchanted Nightingale'),
                subtitle: const Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
              ),
              new ButtonTheme.bar(
                // make buttons use the appropriate styles for cards
                child: new ButtonBar(
                  children: <Widget>[
                    new FlatButton(
                      child: const Text('BUY TICKETS'),
                      onPressed: () {/* ... */},
                      textColor: Colors.deepPurple,
                    ),
                    new FlatButton(
                      child: const Text('LISTEN'),
                      onPressed: () {/* ... */},
                      textColor: Colors.deepPurple,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(items: [new BottomNavigationBar(icon: new Icon(Icon.add), title: new Text("hey"))],)
      );
  }
}



      