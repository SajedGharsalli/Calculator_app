import 'package:flutter/material.dart';
import 'Input.dart';
import 'Output.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
  }

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[400],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blueGrey[300],
        title: const Text(
          'CALCULATOR APP',
          style: TextStyle(color: Colors.black, fontSize: 26),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: OutputContainer(
            input: input,
            result: result,
          )),
          Expanded(flex: 2, child: InputContainer()),
        ],
      ),
    );
  }
}
