import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../providers/favourite_provider.dart';

class FavoriteItems extends StatelessWidget {
  const FavoriteItems({super.key});

  @override
  Widget build(BuildContext context) {
    final favouriteProvider = Provider.of<FavouriteItemProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.blue500,
        iconTheme: const IconThemeData(color: Vx.white),
        title: 'Favourite Items'.text.semiBold.white.make(),
      ),
      body: Column(
        children: [
          ListView.builder(
            itemCount: favouriteProvider.selectedItem.length,
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
