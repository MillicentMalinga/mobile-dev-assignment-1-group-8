import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Roco Mamas Chicken'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        appBar: AppBar(
          // Here we take the value from the MyHomePage object that was created by
          // the App.build method, and use it to set our appbar title.
          title: Text(widget.title),
        ),
        drawer: Drawer(
          // Add a ListView to the drawer. This ensures the user can scroll
          // through the options in the drawer if there isn't enough vertical
          // space to fit everything.
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                child: Text('About Us'),
              ),
              ListTile(
                title: const Text('Our Mission'),
                onTap: () {
                  // Currently does nothing
                },
              ),
              ListTile(
                title: const Text('Careers'),
                onTap: () {
                  // Currently does nothing
                  // ...
                },
              ),
            ],
          ),
        ),
        body: Container(
            color: Colors.orange[100],
            // this is the part where we begin working with images, we will use the
            // Image.asset() widget to display the image after storing the images in
            // assets folder.
            child: Container(
              constraints: const BoxConstraints.expand(
                height: 200.0,
              ),
              child: Image.asset(
                'assets/images/pexels-rajesh-tp-1624487.jpg',
                fit: BoxFit.cover,
              ),
            )),
        // used a combination of a floating action button, and a popup menu
        // to create a chat bot
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          hoverColor: Colors.green,
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Chat with us',
                          hintText: 'What can I help you with today?')),
                )
              ];
            },
          ),
        ));
  }
}
