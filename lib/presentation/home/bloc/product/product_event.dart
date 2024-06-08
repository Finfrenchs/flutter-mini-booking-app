part of 'product_bloc.dart';

@freezed
class ProductEvent with _$ProductEvent {
  const factory ProductEvent.started() = _Started;
  const factory ProductEvent.searchLocation(String location) = _SearchLocation;
  const factory ProductEvent.generateTips() = _GenerateTips;
}
