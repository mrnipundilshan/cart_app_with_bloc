part of 'home_bloc.dart';

@immutable
sealed class HomeEvent {}

class HomeProductWishListButtonClickedEvent extends HomeEvent {}

class HomeProductCartButtonClicked extends HomeEvent {}

class HomeWishListButtonNavgateEvent extends HomeEvent {}

class HomeCartButtonNavigateEvent extends HomeEvent {}
