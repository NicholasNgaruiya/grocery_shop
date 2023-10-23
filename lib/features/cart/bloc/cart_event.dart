part of 'cart_bloc.dart';

@immutable
abstract class CartEvent {}

final class CartInitialEvent extends CartEvent {}

final class RemoveFromCartEvent extends CartEvent {
  final ProductDataModel productDataModel;

  RemoveFromCartEvent(this.productDataModel);
}
