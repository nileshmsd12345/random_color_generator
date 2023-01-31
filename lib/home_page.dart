import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:testing_app/util_constants.dart';

///[HomePage] provides the first
class HomePage extends StatefulWidget {
  ///[title] provides the heading Title in the appBar
  final String title;

  ///
  const HomePage({Key? key, required this.title}) : super(key: key);

  @override
  State<HomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomePage> {
  ValueNotifier<int> randomColorCode = ValueNotifier(1);

  void _setRandomBackGroupColor() {
    randomColorCode.value = math.Random().nextInt(Colors.primaries.length);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(widget.title),
      ),
      body: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            _setRandomBackGroupColor();
            if (kDebugMode) {
              print("Tapped!");
            }
          },
          child: ValueListenableBuilder<int>(
            valueListenable: randomColorCode,
            builder: (context, colorCode, _) {
              return Ink(
                color: Colors.primaries[colorCode],
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const <Widget>[
                      Text(
                        UtilConstants.mainText,
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
