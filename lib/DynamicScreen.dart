import 'package:flutter/material.dart';

class DynamicScreen extends StatefulWidget {
  const DynamicScreen({Key? key}) : super(key: key);

  @override
  State<DynamicScreen> createState() => _HomeState();
}

class _HomeState extends State<DynamicScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: const Text('Dynamic List'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(

              children: [
                custombox(1),
                custombox(2),
                custombox(3),
                custombox(4),
                custombox(5),
                custombox(6),
                custombox(7),
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              onPressed: () {},
              child: const Text("+"),
              backgroundColor: Colors.blueGrey,
            ),
            const SizedBox(
              width: 10,
            ),
            FloatingActionButton(
              onPressed: () {},
              child: const Text("-"),
              backgroundColor: Colors.blueGrey,
            ),
          ],
        ),
      ),
    );
  }
}

Widget custombox(int number) {
  return Container(
    width: double.infinity,
    margin: const EdgeInsets.all(10),
    height: 90,
    alignment: Alignment.center,
    decoration: BoxDecoration(
      color: (number%2==0)? Colors.lightBlueAccent:Colors.blue,
      borderRadius: const BorderRadius.all(
        Radius.circular(
          10,
        ),
      ),
    ),
    child: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            '$number',
            style: const TextStyle(fontSize: 25),
          ),
        ],
      ),
    ),
  );
}