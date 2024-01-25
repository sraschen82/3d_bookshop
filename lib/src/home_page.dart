import 'package:animations_test/src/book_widget.dart';
import 'package:animations_test/src/data.dart';
import 'package:animations_test/src/mycolors.dart';

import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:o3d/o3d.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final bookList = appData();

  @override
  Widget build(BuildContext context) {
    return Card(
      color: MyColors().myRedColor,
      margin: const EdgeInsets.fromLTRB(3, 30, 3, 1),
      elevation: 30,
      shadowColor: Colors.white,
      borderOnForeground: true,
      surfaceTintColor: ColorEffect.neutralValue,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Flexible(
              flex: 7,
              child: const O3D.asset(
                src: 'assets/glb/3dbookshop.glb',
                autoPlay: false,
                disableTap: true,
                disablePan: true,
                disableZoom: true,
                cameraControls: false,
              )
                  .animate()
                  .align()
                  .slideX()
                  .scaleXY(
                      begin: 1, end: 4, duration: const Duration(seconds: 3))
                  .shake(
                      delay: const Duration(
                        seconds: 5,
                      ),
                      duration: const Duration(milliseconds: 300))
                  .then()
                  .animate(onPlay: (c) => c.repeat())
                  .shimmer(
                      delay: const Duration(seconds: 4),
                      color: MyColors().myRedColor)
                  .blur(
                      delay: const Duration(seconds: 12),
                      duration: const Duration(seconds: 1),
                      curve: Curves.decelerate)
                  .boxShadow(
                      begin: const BoxShadow(
                          color: Color.fromARGB(255, 153, 30, 30),
                          blurRadius: 100),
                      end: BoxShadow(
                          color: MyColors().myRedColor, blurRadius: 1),
                      curve: Curves.easeInExpo)),
          Flexible(
            flex: 50,
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 9 / 21,
                ),
                itemCount: bookList.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: bookWidget(bookList[index]),
                  );
                }),
          ),
        ],
      ),
    );
  }
}
