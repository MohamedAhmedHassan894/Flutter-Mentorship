


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/theme/app_text_styles.dart';
import '../../logic/get_data_cubit.dart';

class ItemTitle extends StatelessWidget {
  const ItemTitle({
    super.key, required this.index,
  });
  final int index;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Text(
        BlocProvider.of<GetDataCubit>(context).allData.featureItemModel[index].name,
        style: AppTextStyle.font22WhiteWeight600,
      ),
    );
  }
}
