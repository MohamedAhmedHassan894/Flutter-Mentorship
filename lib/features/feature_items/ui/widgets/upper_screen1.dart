import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mentorship/features/feature_items/logic/get_data_cubit.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import '../../../home/ui/widgets/features_list_view.dart';

class UpperScreen1 extends StatefulWidget {
  const UpperScreen1({super.key, required this.endPoint});
  final String endPoint;

  @override
  State<UpperScreen1> createState() => _UpperScreen1State();
}

class _UpperScreen1State extends State<UpperScreen1> {
  @override
  void initState() {
    BlocProvider.of<GetDataCubit>(context).getFeatureItemsData(widget.endPoint);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final cubit = BlocProvider.of<GetDataCubit>(context);
    return BlocBuilder<GetDataCubit, GetDataState>(
      builder: (context, state) {
        if (state is GetFeatureItemsDataLoading) {
          return const Center(
            child: CircularProgressIndicator(
              color: Colors.white,
            ),
          );
        }
        if (state is GetFeatureItemsDataError) {
          return Center(
            child: Text(state.errorMessage),
          );
        } else {
          final String headerTitle =  widget.endPoint[0].toUpperCase() +  widget.endPoint.substring(1);
          return Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomAppBar(
                  title: headerTitle,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              FeaturesListView(endPoint: widget.endPoint, cubit: cubit),
            ],
          );
        }
      },
    );
  }
}
