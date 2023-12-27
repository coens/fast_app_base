import 'package:flutter/material.dart';
final width5 = Width(5);
final width10 = Width(10);
final width20 = Width(20);
final width30 = Width(30);

final height5 = Height(5);
final height10 = Height(10);
final height20 = Height(20);
final height30 = Height(30);



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
