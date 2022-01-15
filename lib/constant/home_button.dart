import 'package:flutter/material.dart';

class HomeButton extends StatelessWidget {
  final Color bcolors;
  final VoidCallback onChanged;
  final String textData;
  final String imagePath;
  const HomeButton({
    Key? key,
    required this.bcolors,
    required this.textData,
    required this.onChanged,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15),
      child: InkWell(
        onTap: onChanged,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(40),
              bottomRight: Radius.circular(20),
              topLeft: Radius.circular(0),
              topRight: Radius.circular(40),
            ),
            // border: Border.all(color: Colors.red, width: 0),
            //  shape: BoxShape.rectangle,
            boxShadow: const [
              BoxShadow(color: Colors.grey, blurRadius: 2, offset: Offset(5, 5))
            ],
            color: bcolors,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset(
                imagePath,
                fit: BoxFit.scaleDown,
                cacheWidth: 50,
              ),
              // const FlutterLogo(
              //   size: 50,
              // ),
              Text(
                textData,
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    shadows: [
                      Shadow(
                          color: Colors.white,
                          offset: Offset(0, 0.5),
                          blurRadius: 20)
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
