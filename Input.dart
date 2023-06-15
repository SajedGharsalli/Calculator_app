import 'package:flutter/material.dart';
import 'MyButtons.dart';
import 'Output.dart';
import 'package:math_expressions/math_expressions.dart';

class InputContainer extends StatefulWidget {
  const InputContainer({Key? key}) : super(key: key);

  @override
  State<InputContainer> createState() => _InputContainerState();
}

class _InputContainerState extends State<InputContainer> {
  List<String> pad = [
    '7',
    '8',
    '9',
    '+',
    '4',
    '5',
    '6',
    '-',
    '3',
    '2',
    '1',
    '*',
    'del',
    '0',
    '=',
    '/'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blueGrey[200], borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: GridView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: pad.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
            ),
            itemBuilder: (context, i) {
              return Container(
                child: MyButtons(
                  child: pad[i],
                  onPressed: (value) {
                    setState(() {
                      if (value == 'del') {
                        if (input.isNotEmpty) {
                          input = input.substring(0, input.length - 1);
                        }
                      } else if (value == '=') {
                        Parser p = Parser();
                        Expression exp = p.parse(input);
                        ContextModel cm = ContextModel();
                        double eval = exp.evaluate(EvaluationType.REAL, cm);
                        result = eval.toString();
                      }
                      else {
                        input += value;
                      }
                    });
                  },
                ),
              );
            }),
      ),
    );
  }
}
