import 'package:flutter/material.dart';
import 'usedColumn.dart';
import 'newColumn.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF2F6FC),
      appBar: AppBar(
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back_ios),
          onPressed: null,
        ),
        title: Text(
          'Settlement',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
            color: Color(0xFF2E353B),
          ),
        ),
        backgroundColor: Colors.white,
        elevation: 6.0,
      ),
      body: ListView(
        children: [
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
              child: NewColumn(),
            ),
          ),
          SizedBox(
            height: 6.0,
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding:
                  const EdgeInsets.only(top: 20.0, left: 16.0, right: 16.0),
              child: UsedColumn(),
            ),
          )
        ],
      ),
    );
  }
}
