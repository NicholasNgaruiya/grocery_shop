import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:grocery_shop/features/home/models/home_product_data_model.dart';
import 'package:meta/meta.dart';

import '../../../data/wishlist_items.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistInitialEvent>(wishlistInitialEvent);
    on<RemoveFromWishlistEvent>(removeFromWishlistEvent);
  }

  FutureOr<void> wishlistInitialEvent(
      WishlistInitialEvent event, Emitter<WishlistState> emit) {
    emit(WishlistSuccessstate(wishlistItems));
  }

  FutureOr<void> removeFromWishlistEvent(
      RemoveFromWishlistEvent event, Emitter<WishlistState> emit) {
    wishlistItems.remove(event.productDataModel);
    emit(WishlistSuccessstate(wishlistItems));
    emit(RemovedFromWishlistActionState());
  }
}
