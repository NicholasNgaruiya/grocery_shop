part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionstate extends HomeState {}

class HomeInitial extends HomeState {}

class HomeloadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {
  final List<ProductDataModel> products;

  HomeLoadedSuccessState(this.products);
}

class HomeErrorState extends HomeState {}

class NavigateToWishlistPageActionState extends HomeActionstate {}

class NavigateToCartPageActionState extends HomeActionstate {}

class HomeProductItemWishlistedActionState extends HomeActionstate {}

class HomeProductItemCartedActionState extends HomeActionstate {}
