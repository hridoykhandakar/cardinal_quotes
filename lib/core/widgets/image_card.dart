import 'package:flutter/material.dart';

class ImageCard extends StatelessWidget {
  final double width;
  const ImageCard({super.key, this.width = 150});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 132,
      width: width,
      margin: const EdgeInsets.only(right: 15),
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.greenAccent,
      ),
      child: Image.network(
        'https://images.unsplash.com/photo-1506744038136-46273834b3fb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
        fit: BoxFit.cover,
      ),
    );
  }
}
