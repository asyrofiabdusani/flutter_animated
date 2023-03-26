/* import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedClass extends StatefulWidget {
  const AnimatedClass({super.key});

  @override
  State<AnimatedClass> createState() => _AnimatedClassState();
}

class _AnimatedClassState extends State<AnimatedClass> {
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChanged = !isChanged;
            });
            print(isChanged);
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            width: isChanged == false ? 200 : 400,
            height: isChanged == false ? 200 : 100,
            decoration: isChanged == false
                ? BoxDecoration(color: Colors.amber)
                : BoxDecoration(color: Colors.red),
          ),
        ),
      ),
    );
  }
}
 */

//================
//? animated alignment

/* import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedClass extends StatefulWidget {
  const AnimatedClass({super.key});

  @override
  State<AnimatedClass> createState() => _AnimatedClassState();
}

class _AnimatedClassState extends State<AnimatedClass> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GestureDetector(
        onTap: () {
          setState(() {
            isChanged = !isChanged;
          });
        },
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(color: Colors.amber),
          child: AnimatedAlign(
              alignment:
                  isChanged == false ? Alignment.center : Alignment.topLeft,
              duration: Duration(seconds: 2),
              child: Text('Hello World')),
        ),
      ),
    );
  }
} */

//================
//? animated crossfade

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AnimatedClass extends StatefulWidget {
  const AnimatedClass({super.key});

  @override
  State<AnimatedClass> createState() => _AnimatedClassState();
}

class _AnimatedClassState extends State<AnimatedClass> {
  bool isChanged = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isChanged = !isChanged;
            });
          },
          child: AnimatedCrossFade(
            firstChild: Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(color: Colors.amber),
            ),
            secondChild: FlutterLogo(size: 200),
            crossFadeState: isChanged == false
                ? CrossFadeState.showFirst
                : CrossFadeState.showSecond,
            duration: Duration(seconds: 2),
          ),
        ),
      ),
    );
  }
}
