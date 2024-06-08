import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:flutter_mini_booking_app/data/data_source/product_remote_data_source.dart';
import 'package:flutter_mini_booking_app/data/models/response/generate_response_model.dart';

import '../../../../data/models/response/hotel_response_model.dart';

part 'product_bloc.freezed.dart';
part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  final ProductRemoteDataSource dataSource;
  ProductBloc(
    this.dataSource,
  ) : super(const _Initial()) {
    on<_SearchLocation>((event, emit) async {
      emit(const _Loading());

      final response = await dataSource.searchLocation(event.location);

      response.fold(
        (failed) => (emit(_Failed(failed))),
        (success) => (emit(_SuccessFetchLocation(success))),
      );
    });

    on<_GenerateTips>((event, emit) async {
      emit(const _Loading());

      final response = await dataSource.generateTips();

      response.fold(
        (failed) => (emit(_Failed(failed))),
        (success) => (emit(_SuccessGenerate(success))),
      );
    });
  }
}
