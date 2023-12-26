import 'package:flutter/material.dart';
final width10 = Width(10);
final width5 = Width(5);
final height10 = Height(10);
final height5 = Height(5);



class Height extends StatelessWidget {
  final double height;

  const Height(
    this.height, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
    );
  }
}

class Width extends StatelessWidget {
  final double width;

  const Width(
    this.width, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
    );
  }
}
