//Listar apenas a categoria SmartTVs
import 'package:flutter/material.dart';
import 'package:ladiescode/models/ProductsList.dart';
import 'package:ladiescode/screens/item/ItemScreen.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';
import 'package:ladiescode/widgets/ProductCardWidget.dart';

class TvCatScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: 'SmartTVs',
      ),

      //Lista com todos os produtos da categoria
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              GridView.count(
                childAspectRatio: 0.68,
                physics: BouncingScrollPhysics(),
                crossAxisCount: 2,
                shrinkWrap: true,
                children: [
                  
                  //Gerar lista com todos os produtos da categoria Smartphones
                  ...List.generate(
                      tvProducts.length,
                      (index) => ProductCard(
                            product: tvProducts[index],
                            press: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ItemScreen(
                                            product: tvProducts[index],
                                          )));
                            },
                          ))
                ],
              ),
            ],
          ),
        ),
      ),

      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
