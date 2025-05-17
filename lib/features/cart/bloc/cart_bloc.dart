import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:cart_app_with_bloc/data/cart_items.dart';
import 'package:cart_app_with_bloc/features/home/models/home_product_data.dart';
import 'package:flutter/material.dart';

part 'cart_event.dart';
part 'cart_state.dart';

class CartBloc extends Bloc<CartEvent, CartState> {
  CartBloc() : super(CartInitial()) {
    on<CartInitialEvent>(cartInitialEvent);
  }

  FutureOr<void> cartInitialEvent(
    CartInitialEvent event,
    Emitter<CartState> emit,
  ) {
    emit(CartSuccessState(cartItems: cartItems));
  }
}
