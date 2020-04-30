import 'package:flutter/material.dart';

void main()=>runApp(MaterialApp(home: FadeAnimation(),));

class FadeAnimation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _Fade();
}

class _Fade extends State<FadeAnimation> with TickerProviderStateMixin {
  AnimationController animation;
  Animation<double> _fadeInFadeOut;

  @override
  void initState() {
    super.initState();
    animation = AnimationController(vsync: this, 
    duration: Duration(seconds: 3),);
    _fadeInFadeOut = Tween<double>(begin: 0.0, end: 0.1).animate(animation);

    animation.addListener((){
      if(animation.isCompleted){
        animation.reverse();
      }else{
        animation.forward();
      }
    });
    animation.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: FadeTransition(
            opacity: animation,
            child: Container(
              color: Colors.deepPurple,
              width: 100,
              height: 100,
            ),
          ),
        ),
      ),
    );
  }
}
