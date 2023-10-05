//Página home, conteúdo das categorias e todos os produtos
import 'package:flutter/material.dart';
import 'package:ladiescode/screens/home/components/CategoriesWidget.dart';
import 'package:ladiescode/widgets/ItemsWidget.dart';
import 'package:ladiescode/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: SingleChildScrollView(
            child: Column(
      children: [
        SizedBox(height: getProportionateScreenHeight(20)),

        //Título "Categorias"
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
          child: Text(
            'Categorias',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        SizedBox(height: getProportionateScreenHeight(10)),

        //Chamar as categorias de produtos
        CategoriesWidget(),

        SizedBox(height: getProportionateScreenHeight(20)),

        //Título "Todos os Produtos"
        Container(
          alignment: Alignment.topLeft,
          padding: EdgeInsets.only(left: getProportionateScreenWidth(10)),
          child: Text(
            'Todos os Produtos',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),

        //Chamar a lista de produtos
        ItemsWidget(),
      ],
    )));
  }
}
