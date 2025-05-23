import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cart_app_with_bloc/data/wishlist_items.dart';
import 'package:cart_app_with_bloc/features/home/models/home_product_data.dart';
import 'package:flutter/material.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishListInitialEvent>(cartInitialEvent);
    on<WishlistRemoveFromWishlistEvent>(wishlistRemoveFromWishlistEvent);
  }

  FutureOr<void> cartInitialEvent(
    WishListInitialEvent event,
    Emitter<WishlistState> emit,
  ) {
    emit(WishSuccessState(wishlistItems: wishlistItems));
  }

  FutureOr<void> wishlistRemoveFromWishlistEvent(
    WishlistRemoveFromWishlistEvent event,
    Emitter<WishlistState> emit,
  ) {
    wishlistItems.remove(event.productDataModel);
    emit(WishSuccessState(wishlistItems: wishlistItems));
  }
}
