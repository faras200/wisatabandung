import 'package:flutter/material.dart';

final List<int> numberList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wisata Bandung',
      theme: ThemeData(),
      home: ScrollingScreen(),
    );
  }
}

class ScrollingScreen extends StatelessWidget {
  ScrollingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: List_view_Builder());
  }
}

Widget List_View() {
  return ListView(
    children: numberList.map((number) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '$number', // Ditampilkan sesuai item
            style: const TextStyle(fontSize: 50),
          ),
        ),
      );
    }).toList(),
  );
}

Widget List_view_Builder() {
  return ListView.builder(
    itemCount: numberList.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '${numberList[index]}',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      );
    },
  );
}

Widget List_View_Separated() {
  return ListView.separated(
    itemCount: numberList.length,
    itemBuilder: (BuildContext context, int index) {
      return Container(
        height: 250,
        decoration: BoxDecoration(
          color: Colors.grey,
          border: Border.all(color: Colors.black),
        ),
        child: Center(
          child: Text(
            '${numberList[index]}',
            style: const TextStyle(fontSize: 50),
          ),
        ),
      );
    },
    separatorBuilder: (BuildContext context, int index) {
      return const Divider();
    },
  );
}
