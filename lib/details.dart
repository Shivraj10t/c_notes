import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const BodyDetails(),
    );
  }
}

class BodyDetails extends StatefulWidget {
  const BodyDetails({Key? key}) : super(key: key);

  @override
  _BodyDetailsState createState() => _BodyDetailsState();
}

class _BodyDetailsState extends State<BodyDetails> {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Text(
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show"
          "Strings are mainly used to represent text. A character may be represented by multiple code points, each code point consisting of one or two code units. For example the Papua New Guinea flag character requires four code units to represent two code points, but should be treated like a single character: "
          '🇵🇬'
          ". Platforms that do not support the flag character may show",
          textAlign: TextAlign.justify,
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w300,
              letterSpacing: 1.0,
              wordSpacing: 5.0),
        ),
      ),
    );
  }
}
