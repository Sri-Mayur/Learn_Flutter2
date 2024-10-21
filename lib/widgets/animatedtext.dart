import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Animated Text",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 27),
        ),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedTextKit(
            //   animatedTexts: [
            //     TypewriterAnimatedText(
            //       "Mayur Srivastav",
            //       textStyle:
            //           TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            //       speed: Duration(milliseconds: 100),
            //     )
            //   ],
            //   totalRepeatCount: 4,
            //   pause: Duration(milliseconds: 200),
            //   displayFullTextOnTap: true,
            //   stopPauseOnTap: true,
            // ),

            AnimatedTextKit(animatedTexts: [
              RotateAnimatedText("Hola",
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  )),
              RotateAnimatedText("Amigos!",
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  )),
              WavyAnimatedText("How are you",
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  )),
              WavyAnimatedText("doing?",
                  textStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.deepPurple,
                  ))
            ]),
          ],
        ),
      ),
    );
  }
}
