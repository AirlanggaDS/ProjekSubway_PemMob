import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/item.dart';
import '../widgets/product_items.dart';

class GridMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 1).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class GridMenu2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 2).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class GridMenu3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 3).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class GridMenu4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 4).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class GridMenu5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 5).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}

class GridMenu6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context).allProduct;
    final MenuData =
        DataMenu.where((all_Product) => all_Product.category == 6).toList();
    return GridView.builder(
      itemCount: MenuData.length,
      itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
        value: MenuData[counter],
        child: ProductItems(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 2,
        mainAxisSpacing: 10,
      ),
    );
  }
}
