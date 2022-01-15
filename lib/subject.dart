// import 'package:c_notes/semister.dart';
import 'package:c_notes/topic_list.dart';

import 'package:flutter/material.dart';

class SubjectList extends StatelessWidget {
  const SubjectList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text("Subject List"),
      ),
      body: const SubjectBody(),
    );
  }
}

class SubjectBody extends StatefulWidget {
  const SubjectBody({Key? key}) : super(key: key);

  @override
  _SubjectBodyState createState() => _SubjectBodyState();
}

class _SubjectBodyState extends State<SubjectBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / 1.15,
          child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.0,
                  childAspectRatio: 1.1),
              itemCount: 6,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute<void>(
                          builder: (BuildContext context) => const Topic(),
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
                                "Javascript",
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
