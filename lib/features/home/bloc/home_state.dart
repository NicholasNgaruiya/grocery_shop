part of 'home_bloc.dart';

@immutable
abstract class HomeState {}

abstract class HomeActionstate extends HomeState {}

class HomeInitial extends HomeState {}

class HomeloadingState extends HomeState {}

class HomeLoadedSuccessState extends HomeState {}

class HomeErrorState extends HomeState {}

class NavigateToWishlistPageActionState extends HomeActionstate {}

class NavigateToCartPageActionState extends HomeActionstate {}
