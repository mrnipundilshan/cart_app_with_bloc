import 'package:cart_app_with_bloc/features/wishlist/bloc/wishlist_bloc.dart';
import 'package:cart_app_with_bloc/features/wishlist/ui/wishlist_tile_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();
  @override
  void initState() {
    super.initState();
    wishlistBloc.add(WishListInitialEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Wish List Items")),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        bloc: wishlistBloc,
        listener: (context, state) {},
        listenWhen: (previous, current) => current is WishlistState,
        buildWhen: (previous, current) => current is! WishlistState,
        builder: (context, state) {
          switch (state.runtimeType) {
            case const (WishSuccessState):
              final successState = state as WishSuccessState;
              return ListView.builder(itemBuilder: (context, Index) {
                return WishlistTileWidget(
                  
                  productDataModel: successState.wishlistItems[Index]),
              });
          }
          return Container();
        },
      ),
    );
  }
}
