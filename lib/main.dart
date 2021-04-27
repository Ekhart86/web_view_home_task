import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:web_view_home_task/map_view.dart';
import 'package:web_view_home_task/web_view.dart';

import 'video_player.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Homework'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;
  final List<Widget> _pages = [const WebViewPage(), const MapView(), const VideoView()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        elevation: 5.0,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        selectedItemColor: Colors.yellow,
        unselectedItemColor: Colors.white,
        onTap: (value) {
          setState(() => _currentIndex = value);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'WebView',
            icon: Padding(
              padding: EdgeInsets.all(3.0),
              child: Icon(
                CupertinoIcons.book,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'MapView',
            icon: Padding(
              padding: EdgeInsets.all(3.0),
              child: Icon(
                Icons.search,
                size: 30,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'VideoPlayer',
            icon: Padding(
              padding: EdgeInsets.all(3.0),
              child: Icon(
                Icons.settings,
                size: 30,
              ),
            ),
          ),
        ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
