part of 'get_data_cubit.dart';

@immutable
sealed class GetDataState {}

final class GetDataInitial extends GetDataState {}


final class GetFeatureItemsDataLoading extends GetDataState {}
final class GetFeatureItemsDataSuccess extends GetDataState {}
final class GetFeatureItemsDataError extends GetDataState {
  final String errorMessage;

  GetFeatureItemsDataError({required this.errorMessage});
}
