part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistState {}

final class WishlistActionState extends WishlistState {}

final class WishlistInitial extends WishlistState {}

final class WishlistSuccessstate extends WishlistState {
  final List<ProductDataModel> wishlistItems;

  WishlistSuccessstate(this.wishlistItems);
}

final class RemovedFromWishlistActionState extends WishlistActionState {}
