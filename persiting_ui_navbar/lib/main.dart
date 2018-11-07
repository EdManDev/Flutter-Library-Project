import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MyApp> {
  int currentTab =0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter',
      theme: ThemeData(
        primarySwatch: Colors.cyan,
      ),
      home: MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  int currentTab = 0;

  PageOne one;
  PageTwo two;
  List<Widget> pages;
  Widget currentPage;

  List<Data> dataList;


 
  @override
    void initState() {
        dataList = [
          Data(1,false, "Example-1"),
          Data(2,false, "Example-2"),
          Data(3,false, "Example-3"),
          Data(4,false, "Example-4"),
          Data(5,false, "Example-5"),
          Data(6,false, "Example-6"),
          Data(7,false, "Example-7"),
          Data(8,false, "Example-8"),
          Data(9,false, "Example-9"),
          Data(10,false, "Example-10"),
        ];
      one = PageOne();
      two = PageTwo();

      pages = [one , two];

      currentPage = one;
      super.initState();
    }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Persistance Example"),
      ),
      body: currentPage,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentTab,
        onTap: (int index) {
          setState(() {
            currentTab = index;
            currentPage = pages[index];
            });
        },
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text("Home"),
          ),
        ],
      ),
    );
  }
}
class PageOne extends StatefulWidget {
  @override
  PageOneState createState() {
    return new PageOneState();
  }
}

class PageOneState extends State<PageOne> {
  @override
  Widget build(BuildContext context) {
    return Container(
    );
  }
}

class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemExtent: 300.0,
      itemBuilder: (context, index) => Container(
        padding: EdgeInsets.all(2.0),
        child: Material(
          elevation: 2.0,
          borderRadius: BorderRadius.circular(5.0),
          color: index % 2 == 0 ? Colors.red: Colors.blue,
          child: Center(
            child: Text(index.toString()),
          ),
        ),
      ),
    );
  }
}

class Data {
  final int id;
  bool expanded;
  final String title;
  Data(this.id, this.expanded, this.title);
}
