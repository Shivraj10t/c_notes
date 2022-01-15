import 'dart:ui';

import 'package:c_notes/subject.dart';
// import 'package:c_notes/topic_list.dart';
import 'package:flutter/material.dart';

class SemisterList extends StatelessWidget {
  const SemisterList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //  backgroundColor: Colors.green.shade300,
        title: const Text("BCCA Semister"),
      ),
      body: const SBody(),
    );
  }
}

class SBody extends StatefulWidget {
  const SBody({Key? key}) : super(key: key);

  @override
  _SBodyState createState() => _SBodyState();
}

class _SBodyState extends State<SBody> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 6,
        itemBuilder: (context, index) {
          //  final i = MediaQuery.of(context).size.height;
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 10),
            child: Container(
              //
              height: 70,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: const Offset(2, 2),
                        blurRadius: 2.0,
                        spreadRadius: 1)
                  ]),
              child: Center(
                child: ListTile(
                  onTap: () {
                    //  Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const SubjectList(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title: Text(
                    "Semister ${index + 1}",
                    //  textDirection: TextDirection.ltr,
                    // textAlign: TextAlign.left,
                    style: TextStyle(
                        fontSize: 15,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        });
  }
}
