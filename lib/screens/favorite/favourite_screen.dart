// ignore_for_file: must_be_immutable
import 'package:flutter/material.dart';
import 'package:flutter_provider/providers/favourite_provider.dart';
import 'package:flutter_provider/screens/favorite/my_favourite_items.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

class FavouriteScreen extends StatelessWidget {
  FavouriteScreen({super.key});

  List<int> selectedItem = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        title: 'Favourite Screen'.text.semiBold.white.make(),
        actions: [
          const Icon(
            Icons.favorite_rounded,
            color: Vx.white,
          ).onInkTap(
            () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const FavoriteItems(),
              ),
            ),
          ),
          20.widthBox,
        ],
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: 20,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return Consumer<FavouriteItemProvider>(
                builder: (context, value, child) => ListTile(
                  title: 'Item: $index'.text.semiBold.make(),
                  trailing: value.selectedItem.contains(index)
                      ? const Icon(
                          Icons.favorite,
                          color: Colors.red,
                        )
                      : const Icon(Icons.favorite_outline),
                  onTap: () {
                    if (value.selectedItem.contains(index)) {
                      value.removeItems(index);
                    } else {
                      value.addItems(index);
                    }
                  },
                ),
              );
            },
          ).expand(),
        ],
      ),
    );
  }
}
