import 'package:bloc/bloc.dart';
import 'package:cart_app_with_bloc/features/home/models/home_product_data.dart';
import 'package:meta/meta.dart';

part 'wishlist_event.dart';
part 'wishlist_state.dart';

class WishlistBloc extends Bloc<WishlistEvent, WishlistState> {
  WishlistBloc() : super(WishlistInitial()) {
    on<WishlistEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
