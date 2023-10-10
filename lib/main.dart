import 'package:flutter/material.dart';
import 'package:image_gallery_app/image_gallery.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: ImageGallery(),
      ),
    );
  }
}
