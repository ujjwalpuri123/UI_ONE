import 'package:flutter/material.dart';

void main() {
  runApp(MyPhpCourses());
}

class MyPhpCourses extends StatelessWidget {
  const MyPhpCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white70,
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              _basic(),
              SizedBox(
                height: 20,
              ),
              _about(),
              SizedBox(
                height: 20,
              ),
              _abouttext(),
              SizedBox(
                height: 20,
              ),
              _coursedetail(),
              SizedBox(
                height: 20,
              ),
              _introduce(),
              SizedBox(
                height: 20,
              )
            ],
          ),
        )),
      ),
    );
  }
}

Widget _basic() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Basic What is PHP?',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            Text('By Vlad Ermakav')
          ],
        )
      ],
    ),
  );
}

Widget _about() {
  return Container(
    height: 200,
    width: 350,
    decoration: BoxDecoration(
      color: Colors.white30,
      borderRadius: BorderRadius.all(Radius.circular(10.0)),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'PHP',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}

Widget _abouttext() {
  return Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Hypertext Preprocessor ',
          style: TextStyle(fontWeight: FontWeight.bold, fontFamily: 'Times'),
        ),
        Text(
          'is a scripting language that can be embedded or inserted into HTML.PHP is widely used Program dynamic websites.',
          style: TextStyle(fontFamily: 'times'),
        ),
      ],
    ),
  );
}

_coursedetail() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Course Detail',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: 24, fontFamily: 'times'),
        ),
        Container(
          height: 30,
          color: Colors.white30,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Icon(
                Icons.watch_later_outlined,
              ),
              Text('1 hr 20 minutes')
            ],
          ),
        ),
      ],
    ),
  );
}

_introduce() {
  return Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
    Column(
      children: [
        Container(
          height: 200,
          width: 150,
          decoration: BoxDecoration(
            color: Colors.white30,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.notes_outlined,
                      color: Colors.green[900],
                    ),
                    Text(
                      'introduce',
                      style: TextStyle(color: Colors.green[900]),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'what is PHP ?',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('\n  20 min'),
                  ],
                ),
                Column(
                  children: [Icon(Icons.video_library_outlined)],
                ),
              ]),
        ),
      ],
    ),
    SizedBox(
      width: 30,
    ),
    Container(
      height: 200,
      width: 150,
      decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child:
          Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Row(
          children: [
            Icon(
              Icons.settings,
              color: Colors.green[900],
            ),
            Text(
              'Applicaation',
              style: TextStyle(color: Colors.green[900]),
            ),
          ],
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Basic Training',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text('\n 65 min'),
          ],
        ),
        Column(
          children: [Icon(Icons.video_library_outlined)],
        ),
      ]),
    ),
  ]);
}
