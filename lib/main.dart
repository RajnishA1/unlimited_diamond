// ignore_for_file: deprecated_member_use, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dashboard.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: dashboard(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            leading: IconButton(
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              onPressed: () {},
            ),
            title: Text("Unlimited diamond"),
            actions: [
              IconButton(onPressed: () {}, icon: Icon(Icons.notifications_none))
            ],
          ),
          body: GridView(
            children: [
              Container(
                width: 100,
                height: 100,
                child: Card(
                  child: Stack(
                    children: [
                      Image.asset('assets/armor crate.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Armor crate"),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Get now'),
                        ),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/armor crate.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Armor crate"),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Get now'),
                        ),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/armor crate.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Armor crate"),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Get now'),
                        ),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 100,
                child: Card(
                  child: Column(
                    children: [
                      Image.asset('assets/armor crate.png'),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Armor crate"),
                      SizedBox(
                        height: 10,
                      ),
                      FlatButton(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Get now'),
                        ),
                        color: Colors.green,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ),
            ],
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0),
          ),
        ));
  }
}

Widget buildImageInteractionCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(2),
    ),
    child: ListView(
      children: [
        Stack(
          children: [
            Image.asset('assets/armor crate.png'),
            // ignore: prefer_const_constructors
            Positioned(
              bottom: 26,
              right: 26,
              left: 26,
              // ignore: prefer_const_constructors
              child: Text(
                '',
                // ignore: prefer_const_constructors
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'Armor crate',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.center,
          children: [
            FlatButton(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Get now'),
              ),
              color: Colors.green,
              onPressed: () {},
            )
          ],
        ),
      ],
    ));
