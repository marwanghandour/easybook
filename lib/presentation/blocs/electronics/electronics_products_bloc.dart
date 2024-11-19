import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/product_repo.dart';
import 'electronics_products_event.dart';
import 'electronics_products_state.dart';


class ElectronicsProductsBloc extends Bloc<ElectronicsProductsEvent, ElectronicsState> {
  final ProductRepository productRepository;

  ElectronicsProductsBloc(this.productRepository) : super(ElectronicsInitial()) {
    on<FetchElectronics>(fetchElectronics);
  }

  void fetchElectronics(FetchElectronics event, Emitter<ElectronicsState> emit) async {
    emit(ElectronicsLoading());
    try {
      final products = await productRepository.getAllProducts();
      emit(ElectronicsLoaded(products));
    } catch (e) {
      emit(ElectronicsError('Failed to fetch products'));
    }
  }
}
