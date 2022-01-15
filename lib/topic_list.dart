import 'package:c_notes/details.dart';
import 'package:flutter/material.dart';

class Topic extends StatelessWidget {
  const Topic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade300,
        title: const Text("C# Topic"),
      ),
      body: const TopicList(),
    );
  }
}

class TopicList extends StatefulWidget {
  const TopicList({Key? key}) : super(key: key);

  @override
  _TopicListState createState() => _TopicListState();
}

class _TopicListState extends State<TopicList> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // height: MediaQuery.of(context).size.height / 2,
      child: ListView.builder(
          itemCount: 11,
          itemBuilder: (context, index) {
            //  final i = MediaQuery.of(context).size.height;
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              child: Container(
                //
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.shade500,
                          offset: const Offset(2, 2),
                          blurRadius: 2.0,
                          spreadRadius: 1)
                    ]),
                child: ListTile(
                  onTap: () {
                    //  Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) => const Details(),
                      ),
                    );
                  },
                  leading: CircleAvatar(
                    child: Text("${index + 1}"),
                  ),
                  title: const Text("Variable"),
                  subtitle: Text("$index"),
                ),
              ),
            );
          }),
    );
  }
}
