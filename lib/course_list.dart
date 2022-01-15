import 'package:c_notes/semister.dart';

import 'package:flutter/material.dart';

class CourseList extends StatelessWidget {
  const CourseList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.deepOrange.shade300,
        backgroundColor: Colors.green.shade300,
        title: const Text("Course List"),
      ),
      body: const Cbody(),
    );
  }
}

class Cbody extends StatefulWidget {
  const Cbody({Key? key}) : super(key: key);

  @override
  _CbodyState createState() => _CbodyState();
}

class _CbodyState extends State<Cbody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // SizedBox(
        //   height: MediaQuery.of(context).size.height / 2,
        //   child: ListView.builder(
        //       itemCount: 25,
        //       itemBuilder: (context, index) {
        //         final i = MediaQuery.of(context).size.height;
        //         return Padding(
        //           padding: const EdgeInsets.all(10.0),
        //           child: Container(
        //             decoration: BoxDecoration(
        //               borderRadius: BorderRadius.circular(10),
        //               color: Colors.amberAccent,
        //             ),
        //             child: ListTile(
        //               title: Text("Shivarj  :   $i"),
        //               subtitle: Text("$index"),
        //             ),
        //           ),
        //         );
        //       }),
        // ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.15,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 0.7),
              itemCount: 5,
              itemBuilder: (context, index) {
                //  final i = MediaQuery.of(context).size.height;
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) =>
                              const SemisterList(),
                        ),
                      );
                    },
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            //color: Colors.deepOrange.shade200,
                            color: const Color.fromRGBO(250, 250, 250, 30),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey.shade500,
                                  offset: const Offset(2, 3),
                                  blurRadius: 2.0,
                                  spreadRadius: 1)
                            ]),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: const [
                            FlutterLogo(
                              size: 50,
                            ),
                            // CircleAvatar(
                            //   radius: 30,
                            //   child: Text("C#"),
                            //   backgroundColor: Colors.white,
                            //   foregroundColor: Colors.black,
                            // ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                "BCCA",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        )),
                  ),
                );
              }),
        )
      ],
    );
  }
}
