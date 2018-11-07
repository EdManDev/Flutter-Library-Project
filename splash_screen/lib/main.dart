import 'package:flutter/material.dart';

void main() => runApp(new MaterialApp(
  theme: 
  ThemeData(primaryColor: Colors.green,accentColor: Colors.green), 
  debugShowCheckedModeBanner: false,
   home: SplashScreen(),
));


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
    void initState() {

      super.initState();
      
    }
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Container(
            decoration: BoxDecoration(color: Colors.teal[900]),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Expanded(flex: 2,
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 50.8,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.brown[700],
                        size: 70.0,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 10.0)
                      ),
                      Text("SH Project \n App",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
               ),
              ),
              Expanded(
                flex: 1,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircularProgressIndicator(),
                    Padding(padding: EdgeInsets.only(top: 4.0),
                    ),
                    Text("Online Store\nFor Everyone",
                    textAlign: TextAlign.center,
                     style: TextStyle(
                      color: Colors.white,
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ), 
    );
  }
}