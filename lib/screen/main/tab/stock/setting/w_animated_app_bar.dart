import 'package:fast_app_base/common/common.dart';
import 'package:flutter/cupertino.dart';

import '../../../../../common/widget/w_arrow.dart';

class AnimatedAppBar extends StatefulWidget {
  final String title;
  final ScrollController controller;

  const AnimatedAppBar(this.title, {super.key, required this.controller});

  @override
  State<AnimatedAppBar> createState() => _AnimatedAppBarState();
}

class _AnimatedAppBarState extends State<AnimatedAppBar> {
  final duration = 250.ms;
  double scrollPosition = 0;

  @override
  void initState() {
    widget.controller.addListener(() {
      setState(() {
        scrollPosition = widget.controller.position.pixels;
      });
    });

    super.initState();
  }


  bool get isTriggered => scrollPosition > 80;
  bool get isNotTriggered => !isTriggered;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: context.backgroundColor,
      child: SafeArea(
        child: Stack(
          children: [
            Tap(
              onTap: () {
                Nav.pop(context);
              },
              child: Arrow(
                direction: AxisDirection.left,
              ),
            ).p20(),
            AnimatedContainer(
              duration: duration,
              padding: EdgeInsets.only(left: isNotTriggered ? 20 : 50, top: isNotTriggered ? 50 : 15),
              child: AnimatedDefaultTextStyle(
                style: TextStyle(fontSize: isNotTriggered ? 30 : 15),
                duration: duration,
                child: widget.title.text.make(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
