part of 'wishlist_bloc.dart';

@immutable
abstract class WishlistEvent {}

class WishListInitialEvent extends WishlistEvent {}

class WishlistRemoveFromWishlistEvent extends WishlistEvent {
  final ProductDataModel productDataModel;
  WishlistRemoveFromWishlistEvent({required this.productDataModel});
}
