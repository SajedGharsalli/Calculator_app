import 'package:flutter/material.dart';

class MyButtons extends StatefulWidget {
  final String child;
  final Function(String) onPressed;
  const MyButtons({Key? key, required this.child, required this.onPressed})
      : super(key: key);

  @override
  State<MyButtons> createState() => _MyButtonsState();
}

class _MyButtonsState extends State<MyButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
          onPressed: () {
            widget.onPressed(widget.child);
          },
          child: Center(
            child: Text(
              widget.child,
              style: const TextStyle(
                fontSize: 30,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ),
    );
  }
}