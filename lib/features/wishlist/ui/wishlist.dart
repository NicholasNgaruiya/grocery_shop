import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:grocery_shop/features/wishlist/ui/wishlist_tile_widget.dart';

import '../bloc/wishlist_bloc.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  final WishlistBloc wishlistBloc = WishlistBloc();
  @override
  void initState() {
    wishlistBloc.add(WishlistInitialEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wishlist"),
      ),
      body: BlocConsumer<WishlistBloc, WishlistState>(
        bloc: wishlistBloc,
        listenWhen: (previous, current) => current is WishlistActionState,
        buildWhen: (previous, current) => current is! WishlistActionState,
        listener: (context, state) {
          if (state is RemovedFromWishlistActionState) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Item removed from wishlist"),
              duration: Duration(milliseconds: 850),
            ));
          }
        },
        builder: (context, state) {
          switch (state.runtimeType) {
            case WishlistSuccessstate:
              final successState = state as WishlistSuccessstate;
              return ListView.builder(
                itemCount: successState.wishlistItems.length,
                itemBuilder: ((context, index) {
                  return WishlistTileWidget(
                      wishlistBloc: wishlistBloc,
                      productDataModel: successState.wishlistItems[index]);
                }),
              );
            default:
              return const SizedBox();
          }
        },
      ),
    );
  }
}
