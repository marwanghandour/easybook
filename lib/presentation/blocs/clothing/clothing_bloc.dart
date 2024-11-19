import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../domain/repositories/product_repo.dart';
import 'clothing_event.dart';
import 'clothing_state.dart';

class ClothingBloc extends Bloc<ClothingProductsEvent, ClothingState> {
  final ProductRepository productRepository;

  ClothingBloc(this.productRepository) : super(ClothingInitial()) {
    on<FetchClothing>(_fetchClothing);
  }

  void _fetchClothing(FetchClothing event, Emitter<ClothingState> emit) async {
    emit(ClothingLoading());
    try {
      final products = await productRepository.getAllProducts();
      emit(ClothingLoaded(products));
    } catch (e) {
      emit(ClothingError('Failed to fetch products'));
    }
  }
}
