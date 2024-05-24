import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mentorship/features/feature_items/logic/get_data_cubit.dart';
import '../../../../core/widgets/custom_app_bar.dart';
import 'feature_listview_item.dart';

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
        if(state is GetFeatureItemsDataLoading)
          {
            return const Center(child: CircularProgressIndicator(color: Colors.white,),);
          }
        if (state is GetFeatureItemsDataError)
          {
            return Center(child: Text(state.errorMessage),);
          }
        else{
          return Column(
            children: [
              Align(
                alignment: Alignment.center,
                child: CustomAppBar(
                  title: widget.endPoint.toUpperCase(),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: cubit.allData.featureItemModel.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){

                      },
                      child: FeatureListViewItem(
                        index: index,
                      ),
                    );
                  },
                ),
              ),
            ],
          );
        }
      },
    );
  }
}



