part of 'cart_bloc.dart';

@immutable
abstract class CartState {}

final class CartActionState extends CartState {}

final class CartInitial extends CartState {}

final class CartSuccessState extends CartState {
  final List<ProductDataModel> cartItems;

  CartSuccessState(this.cartItems);
}

final class RemovedFromCartActionState extends CartActionState {}
