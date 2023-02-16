import 'package:flutter/material.dart';

class Bookdesign extends StatelessWidget {
  String text;
  Color color;
  String images;
  VoidCallback onTap;

  Bookdesign(
      {Key? key,
      required this.text,
      required this.color,
      required this.images,
      required this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 150,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20),
          )),
      child: Stack(clipBehavior: Clip.none, children: [
        Positioned(
          top: -40,
          left: 20,
          child: Column(
            children: [
              Image.network(
                images,
                width: 110,
              ),
            ],
          ),
          
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: InkWell(
                  onTap: onTap,
                  child: Text(
                    text,
                    style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
