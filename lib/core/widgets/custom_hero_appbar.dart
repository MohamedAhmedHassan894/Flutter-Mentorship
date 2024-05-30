import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomHeroAppBar extends StatelessWidget {
  const CustomHeroAppBar({super.key, required this.name, required this.image, required this.index});


  final String name;
  final String image;
  final int index;
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 400,
      pinned: true,
      stretch: true,
      backgroundColor: Colors.black,
      title: Text(name,
        style: const TextStyle(color: Colors.white),),
      flexibleSpace: FlexibleSpaceBar(
        background: Hero(
          tag: index,
          child: ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(13)),
            child: CachedNetworkImage(
              imageUrl: image,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ),
    );
  }
}
