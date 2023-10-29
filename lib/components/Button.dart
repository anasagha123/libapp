import 'package:flutter/material.dart';

f(){}

class Button extends StatelessWidget {

  final double height;
  final double width;
  final String text;
  final Function function;
  final Color color;

  const Button({
    super.key,
    this.height = 20,
    this.width = 60,
    this.text = '',
    this.function = f,
    this.color = Colors.black,
    });

  @override
  Widget build(BuildContext context) => ElevatedButton(
    style: ButtonStyle(
shape: MaterialStateProperty.all<RoundedRectangleBorder>(
  RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
),
    ),
     onPressed: () {
      function();
    },
    child: Container(
      child: Center(
        child: Text(
          text,
          style: TextStyle(
            fontSize: 12,
          ),
          ),
      ),
      ),
  );
}

