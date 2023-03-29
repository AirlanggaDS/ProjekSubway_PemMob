import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/item.dart';
import '../widgets/product_items.dart';






class GridMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context);
    final MenuData = DataMenu.allProduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    final DataMenu = Provider.of<sandwiches_product>(context);
    final MenuData = DataMenu.sandwichProduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    final DataMenu = Provider.of<drinks_product>(context);
    final MenuData = DataMenu.drinksproduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    final DataMenu = Provider.of<salad_product>(context);
    final MenuData = DataMenu.saladproduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    final DataMenu = Provider.of<side_product>(context);
    final MenuData = DataMenu.sideproduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
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
    final DataMenu = Provider.of<wrap_product>(context);
    final MenuData = DataMenu.wrapproduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ChangeNotifierProvider.value(
      value: MenuData[counter],
       child: ProductItems(),
    ), gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       crossAxisSpacing: 2,
       mainAxisSpacing: 10,
     ),
    );
  }
}
