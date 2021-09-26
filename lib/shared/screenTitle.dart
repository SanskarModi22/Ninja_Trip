import 'package:flutter/material.dart';

class ScreenTitle extends StatelessWidget {
  final String text;

  const ScreenTitle({Key key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: ColorTween(begin: Colors.blue, end: Colors.red),
      child: Text(
        text,
        style: TextStyle(fontSize: 36, color: Colors.white, fontWeight: FontWeight.bold),
      ),
      duration: Duration(seconds: 2),
      builder: (BuildContext context, _val, _) {
        return Text(
          text,
          style: TextStyle(fontSize: 36, color: _val, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
