part of 'company_list_cubit.dart';

@freezed
class CompanyListState with _$CompanyListState {
  const factory CompanyListState.initial() = CompanyListInitial;
  const factory CompanyListState.ready({List<CompanyEntity>? data}) = CompanyListReady;
  const factory CompanyListState.error(String? error) = CompanyListError;



}
