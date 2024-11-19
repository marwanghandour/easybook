
import '../../../domain/entities/product.dart';

abstract class ElectronicsState {}

class ElectronicsInitial extends ElectronicsState {}

class ElectronicsLoading extends ElectronicsState {}

class ElectronicsLoaded extends ElectronicsState {
  final List<ProductEntity> electronics;

  ElectronicsLoaded(this.electronics);
}

class ElectronicsError extends ElectronicsState {
  final String message;

  ElectronicsError(this.message);
}
