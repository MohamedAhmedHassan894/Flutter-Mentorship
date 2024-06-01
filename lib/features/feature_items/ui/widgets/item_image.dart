
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/get_data_cubit.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: const BorderRadius.all(Radius.circular(13),),
      child: Hero(
        tag: index,
        child: CachedNetworkImage(
          imageUrl:
          BlocProvider.of<GetDataCubit>(context).allData.featureItemModel[index].imageURL,
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height / 2.3,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
