import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../widgets/product_items.dart';
import '../providers/sandwiches_product.dart';
import '../providers/breakfast_product.dart' as breakfast;



class GridMenu extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    final DataMenu = Provider.of<all_Product>(context);
    final MenuData = DataMenu.allProduct;
    return GridView.builder(
     itemCount: MenuData.length,
     itemBuilder: (ctx, counter) => ProductItems(
      MenuData[counter].ImgMenu, 
      MenuData[counter].NamaMenu,
      MenuData[counter].PriceMenu),
     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
       crossAxisCount: 2,
       crossAxisSpacing: 2,
       mainAxisSpacing: 10,
     ),
    );
  }
}