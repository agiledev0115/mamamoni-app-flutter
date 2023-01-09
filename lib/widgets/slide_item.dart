import 'package:flutter/material.dart';

import '../model/slide.dart';

class SlideItem extends StatelessWidget {
  final int index;
  const SlideItem(this.index, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Container(
          height: 300,
          decoration: BoxDecoration(
            //shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage(slideList[index].imageUrl),
            ),
          ),
        ),
        const SizedBox(
          height: 40,
        ),
        Text(
          slideList[index].title,
          style: const TextStyle(
            fontSize: 22,
            color: Colors.black,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        // Text(
        //
        //   slideList[index].description,
        //   textAlign: TextAlign.center,
        //   style: TextStyle(color: Colors.grey),
        // ),
      ],
    );
  }
}
