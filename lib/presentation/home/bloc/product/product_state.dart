part of 'product_bloc.dart';

@freezed
class ProductState with _$ProductState {
  const factory ProductState.initial() = _Initial;
  const factory ProductState.loading() = _Loading;
  const factory ProductState.successFetchLocation(
      List<HotelResponseModel> data) = _SuccessFetchLocation;
  const factory ProductState.successGenerate(GenerateResponseModel data) =
      _SuccessGenerate;
  const factory ProductState.failed(String message) = _Failed;
}
