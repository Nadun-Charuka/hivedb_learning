import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //refer the mybox
  final _myBox = Hive.box('mybox');

  //write data
  void writeData() {
    _myBox.put(1, 'Nadun');
  }

  //read data
  void readData() {
    print(_myBox.get(1));
  }

  //delete data
  void deleteData() {}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
              onPressed: writeData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[200], // Set the background color
              ),
              child: const Text("Write"),
            ),
            ElevatedButton(
              onPressed: readData,
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[200], // Set the background color
              ),
              child: const Text("Read"),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue[200], // Set the background color
              ),
              child: const Text("Delete"),
            ),
          ],
        ),
      ),
    );
  }
}
