import 'dart:math';

import 'package:flutter/material.dart';


class ImageGallery extends StatefulWidget {
  const ImageGallery({super.key});

  @override
  State<ImageGallery> createState() => _ImageGalleryState();
}

class _ImageGalleryState extends State<ImageGallery> {
  // image
  var currentImage = 2;

  void nextImage() {
    setState(() {
      currentImage = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.green[50],
      ),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset("assets/images/image-$currentImage.jpg",
                width: 300, height: 200),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: nextImage,
              child: const Text("Next"),
            ),
          ],
        ),
      ),
    );
  }
}
