import 'package:flutter/material.dart';

class CustomFullImage extends StatelessWidget {
  const CustomFullImage({super.key, required this.imagePath});
  final String imagePath;

  @override
  Widget build(BuildContext context) {
        var size = MediaQuery.sizeOf(context);
    return Image.asset(
              imagePath,
              fit: BoxFit.cover, 
              width: size.width, 
              height: size.height, 
            );
  }
}