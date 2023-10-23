part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

final class WishlistInitialEvent extends WishlistEvent {}

final class RemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;

  RemoveFromWishlistEvent(this.productDataModel);
}
