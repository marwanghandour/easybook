import '../../../domain/entities/product.dart';

abstract class ClothingState {}

class ClothingInitial extends ClothingState {}

class ClothingLoading extends ClothingState {}

class ClothingLoaded extends ClothingState {
  final List<ProductEntity> clothing;

  ClothingLoaded(this.clothing);
}

class ClothingError extends ClothingState {
  final String message;

  ClothingError(this.message);
}
