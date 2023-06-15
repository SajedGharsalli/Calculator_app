import 'package:flutter/material.dart';

var input = '';
var result = '0';

class OutputContainer extends StatefulWidget {
  final String input;
  final String result;
  const OutputContainer({Key? key, required this.input, required this.result})
      : super(key: key);

  @override
  State<OutputContainer> createState() => _OutputContainerState();
}

class _OutputContainerState extends State<OutputContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      child: SizedBox(
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          ElevatedButton(
            onPressed: () {
              input = '';
              result = '0';
            },
            style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
            child: Text('Clear'),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  input,
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20),
                alignment: Alignment.centerRight,
                child: Text(
                  result,
                  style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
