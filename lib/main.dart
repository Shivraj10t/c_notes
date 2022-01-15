import 'package:flutter/material.dart';

import 'constant/home_button.dart';
import 'semister.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Go Self Learning',
      theme: ThemeData(
          primarySwatch: Colors.green,
          appBarTheme: const AppBarTheme(
            backgroundColor: Colors.amber,
            centerTitle: true,
            elevation: 5,
          )),
      home: const MyHomePage(title: 'Modern Tech.'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          SizedBox(
            child: Container(
              width: 10000,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(200),
                  bottomRight: Radius.circular(200),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.amber.shade200,
                    offset: const Offset(5, 5),
                  ),
                ],
                gradient: LinearGradient(
                  colors: [
                    Colors.amberAccent.shade200,

                    Colors.amber.shade800,
                    // Colors.greenAccent.shade200,
                    // Colors.green.shade800,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              //  color: Colors.amberAccent,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    FlutterLogo(
                      style: FlutterLogoStyle.stacked,
                      size: 160,
                      textColor: Colors.black,
                      duration: Duration(minutes: 1),
                      curve: Curves.ease,
                    ),
                  ],
                ),
              ),
            ),
            height: MediaQuery.of(context).size.height / 2.3,
          ),
          SizedBox(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  //  crossAxisSpacing: 2.0,
                  // childAspectRatio: 0.8,
                  mainAxisSpacing: 50,
                ),
                children: [
                  HomeButton(
                    imagePath: 'assets/icons/read1.png',
                    bcolors: Colors.deepOrange.shade400,
                    textData: 'Learn',
                    onChanged: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SemisterList(),
                        ),
                      );
                    },
                  ),
                  HomeButton(
                    imagePath: 'assets/icons/pdf.png',
                    bcolors: Colors.pinkAccent.shade200,
                    textData: 'PDF',
                    onChanged: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SemisterList(),
                        ),
                      );
                    },
                  ),
                  HomeButton(
                    imagePath: 'assets/icons/code.png',
                    bcolors: Colors.amberAccent.shade200,
                    textData: 'Code',
                    onChanged: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SemisterList(),
                        ),
                      );
                    },
                  ),
                  HomeButton(
                    imagePath: 'assets/icons/share.png',
                    bcolors: Colors.blueAccent.shade200,
                    textData: 'Share',
                    onChanged: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SemisterList(),
                        ),
                      );
                    },
                  ),
                ],
              ),
              height: MediaQuery.of(context).size.height / 1.8)
        ],
      ),
    );
  }
}
