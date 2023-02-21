import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of our application.
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
    // The Flutter framework has been optimized to make rerunning build methods fast
    // so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.

    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          // We take the value from the MyHomePage object that was created by
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
        body: SingleChildScrollView(
          // color: Colors.orange[100],
          // this is the part where we begin working with images, we will use the
          // Image.asset() widget to display the image after storing the images in
          // assets folder.
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.all(40),
                constraints: const BoxConstraints.expand(
                  height: 700.0,
                ),
                child: Image.asset(
                  'assets/images/pexels-rajesh-tp-1624487.jpg',
                  fit: BoxFit.fill,
                ),
              ),
              GridView.count(
                  padding: const EdgeInsets.all(20.0),
                  crossAxisCount: 3,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: [
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 250.0,
                            child: Column(children: [
                              Container(
                                height: 200,
                                width: 175,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            "assets/images/toa-heftiba-inDRPMBfX8M-unsplash.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              Text('Chicken\'s Diners',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-rajesh-tp-1624487.jpg'),
                              ),
                              Text('Chicken\'s Diners',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-rajesh-tp-1624487.jpg'),
                              ),
                              Text('Chicken\'s Diners',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-rajesh-tp-1624487.jpg'),
                              ),
                              Text('Chicken\'s Diners',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-rajesh-tp-1624487.jpg'),
                              ),
                              Text('Chicken\'s Diners',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    )),
                    Card(
                        child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      // shadowColor: Colors.orange,
                      // color: Colors.white,
                      child: Column(children: [
                        SizedBox(
                            width: 200.0,
                            height: 200.0,
                            child: Column(children: const [
                              CircleAvatar(
                                radius: 80.0,
                                backgroundImage: AssetImage(
                                    'assets/images/pexels-rajesh-tp-1624487.jpg'),
                              ),
                              Text('Samosa Madness',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  )),

                              // this is where we will add the text for the menu items
                            ]))
                      ]),
                    ))
                  ])
            ],
          ),
        ),

        // used a combination of a floating action button, and a popup menu
        // to create a chat bot
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          hoverColor: Colors.green,
          child: PopupMenuButton(
            itemBuilder: (BuildContext context) {
              return [
                const PopupMenuItem(
                  child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          labelText: 'Chat with us',
                          hintText: 'What can I help you with today?')),
                )
              ];
            },
          ),
        ),
        // implementing a bottom navigation. Does not do anything yet

        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ));
  }
}
