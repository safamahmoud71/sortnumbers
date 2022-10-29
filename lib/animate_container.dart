import 'package:flutter/material.dart';
class CreateAnimation extends StatefulWidget {
  final String num;
  final  heigh;
  final ind;
  const CreateAnimation({Key? key, required this.num, this.heigh, this.ind}) : super(key: key);

  @override
  State<CreateAnimation> createState() => _CreateAnimationState();
}

class _CreateAnimationState extends State<CreateAnimation> {
  @override
  Widget build(BuildContext context) {
    return
      AnimatedContainer(
        duration: Duration(seconds: 1),
        width: double.infinity,
        height: widget.heigh,
        curve: Curves.easeIn,
        child: Text(
          widget.num,
          style: TextStyle(
            fontSize: (70/ (widget.ind + 1)),
            color: Colors.white,
            fontWeight: FontWeight.bold
          ),
        ),


    );
  }
}
