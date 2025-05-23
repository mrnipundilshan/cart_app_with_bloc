part of 'wishlist_bloc.dart';

@immutable
sealed class WishlistState {}

abstract class WishlistActionState extends WishlistState {}

class WishlistInitial extends WishlistState {}

class WishSuccessState extends WishlistState {
  final List<ProductDataModel> wishlistItems;

  WishSuccessState({required this.wishlistItems});
}
