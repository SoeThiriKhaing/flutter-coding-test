part of 'company_detail_cubit.dart';

@freezed
class CompanyDetailState with _$CompanyDetailState {
  const factory CompanyDetailState.initial() = CompanyDetailInitial;
  const factory CompanyDetailState.ready({CompanyEntity? data
  }) = CompanyDetailReady;
  const factory CompanyDetailState.error(String message) = CompanyDetailError;




}
