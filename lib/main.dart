import 'package:drawer/scr/graficas/barras.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final appTitle = 'Drawer Demo';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
      //initialRoute: '/home' ,
      routes: {
        '/home': (context) => MyHomePage(),
        '/secons': (context) => SecondScreen(),
        '/firt': (context) => FirstScreen(),
        
      },
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  MyHomePage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // se crea el scaffold
      appBar: AppBar(title: Text(title)),
      body: Center(child: Text('My Page!')),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text('Screen 1'),
              onTap: () {
                Navigator.pop(context);
                // Navigator.pushNamed(context, '/home');
              },
            ),
            ListTile(
              title: Text('Screen 2'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.pushNamed(context, '/secons');
              },
            ),
            ListTile(
              title: Text('Screen 3'),
              onTap: () {
                //Navigator.pop(context);
                Navigator.pushNamed(context, '/firt');
              },
            ),

          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
      ),
      body: SimpleBarChart.withSampleData(),
    );
  }
}


class FirstScreen extends StatelessWidget {
  const FirstScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('First Page'),
      ),
      body: Center(
        child: Text('First Page'),
      ),
    );
  }
}
