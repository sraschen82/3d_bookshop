import 'package:animations_test/src/book_model.dart';
import 'package:animations_test/src/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:o3d/o3d.dart';

Card bookWidget(BookModel book) {
  final O3DController controller = O3DController();
  return Card(
    color: MyColors().myRedColor,
    borderOnForeground: true,
    shape: Border.all(
        color: Colors.black,
        strokeAlign: 5,
        width: 3,
        style: BorderStyle.solid),
    shadowColor: Colors.white,
    margin: const EdgeInsets.all(10),
    elevation: 30,
    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          children: [
            Text(book.title, style: const TextStyle(fontSize: 20)),
            Text('Autor: ${book.autor}'),
          ],
        ),
        Flexible(
          flex: 6,
          child: O3D
              .asset(
                src: book.path,
                controller: controller,
              )
              .animate()
              .fadeIn(duration: const Duration(seconds: 4))
              .then()
              .shakeX(duration: const Duration(milliseconds: 300))
              .then()
              .animate(onPlay: (c) => c.repeat())
              .shimmer(delay: const Duration(seconds: 8)),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.heart, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.comment, color: Colors.white),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(MdiIcons.send, color: Colors.white),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(Colors.blue[900])),
              child: const Text('BUY', style: TextStyle(color: Colors.white)),
            ),
          ],
        ),
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Divider(thickness: 2),
        ),
        Flexible(
          flex: 10,
          child: Card(
              margin: const EdgeInsets.fromLTRB(10, 0, 10, 10),
              color: MyColors().myRedColor,
              elevation: 30,
              child: Container(
                alignment: Alignment.topCenter,
                height: double.maxFinite,
                width: double.maxFinite,
                child: Column(
                  children: [
                    Text(book.price, style: const TextStyle(fontSize: 20)),
                    const Padding(padding: EdgeInsets.only(top: 10)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Description: ${book.description}',
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ],
                ),
              )),
        ),
      ],
    ),
  );
}
