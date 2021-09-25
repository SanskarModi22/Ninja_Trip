import 'package:flutter/material.dart';

class Example extends StatefulWidget {
  const Example({key}) : super(key: key);

  @override
  _ExampleState createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  double _margin = 0.0;
  double _width = 200;
  double _opacity = 1;
  Color _color = Colors.blue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AnimatedContainer(
        duration: Duration(seconds: 1),
        color: _color,
        width: _width,
        margin: EdgeInsets.all(_margin),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _margin = 50;
                });
              },
              child: Text("Change Margin"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _color = Colors.red;
                });
              },
              child: Text("Change Color"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _width = 400;
                });
              },
              child: Text("Change Width"),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  _opacity = 0;
                });
              },
              child: Text("Change Opacity"),
            ),
            AnimatedOpacity(
              opacity: _opacity,
              child: Text("Invisible"),
              duration: Duration(seconds: 2),
            )
          ],
        ),
      ),
    );
  }
}
