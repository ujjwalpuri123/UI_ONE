import 'package:flutter/material.dart';
import 'package:simple_ui/myphpcourses.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            _statusBar(),
            SizedBox(
              height: 20,
            ),
            _searchBar(),
            SizedBox(
              height: 10,
            ),
            _learningBox(),
            SizedBox(
              height: 10,
            ),
            _lastseencourse(),
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyPhpCourses()),
                );
              },
              child: _myphpcourses(),
            ),
            SizedBox(
              height: 30,
            ),
            _story(),
            SizedBox(
              height: 30,
            ),
            _winpes(),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      )),
    );
  }
}

Widget _statusBar() {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              'Seapul R.',
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
        Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
              color: Colors.white30, borderRadius: BorderRadius.circular(500)),
        ),
      ],
    ),
  );
}

Widget _searchBar() {
  return TextField(
    decoration: InputDecoration(
      labelText: "Search",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
}

Widget _learningBox() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'What do you want to learn?',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.orange),
                  // padding: MaterialStateProperty.all(EdgeInsets.all(50)),
                  textStyle:
                      MaterialStateProperty.all(TextStyle(fontSize: 12))),
              child: const Text(
                'Get started',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
        Column(children: [
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage('assets/images/img.jpg'),
          )
        ]),
      ],
    ),
  );
}

Widget _lastseencourse() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.start,
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Last Seen Course',
        style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
      ),
    ],
  );
}

Widget _story() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Icon(
            Icons.account_circle_outlined,
            color: Colors.green[500],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Story of my Life:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('4hr. 30min'),
        ],
      ),
      Row(
        children: [Icon(Icons.video_collection_outlined)],
      ),
    ]),
  );
}

Widget _myphpcourses() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Icon(
            Icons.account_circle_outlined,
            color: Colors.green[500],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Basic what is PHP ?',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('1hr. 25 min'),
        ],
      ),
      Row(
        children: [Icon(Icons.video_library_outlined)],
      ),
    ]),
  );
}

Widget _winpes() {
  return Container(
    decoration: BoxDecoration(
        color: Colors.white30,
        borderRadius: BorderRadius.all(Radius.circular(10.0))),
    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Column(
        children: [
          Icon(
            Icons.account_circle_outlined,
            color: Colors.green[500],
          ),
        ],
      ),
      Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'How to Win PES:',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text('2hr. 45 min'),
        ],
      ),
      Row(
        children: [Icon(Icons.video_library_outlined)],
      ),
    ]),
  );
}
