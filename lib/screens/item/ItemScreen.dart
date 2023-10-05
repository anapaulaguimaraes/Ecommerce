//Página produto, conteúdo da listagem do produto selecionado
import 'package:flutter/material.dart';
import 'package:ladiescode/models/ProductsList.dart';
import 'package:ladiescode/screens/item/components/CustomItemsBody.dart';
import 'package:ladiescode/screens/item/components/ImageCarosel.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      //Appbar - barra de navegação superior
      appBar: CustomAppBar(
        title: 'Produto',
      ),

      //Body - página de descrição do produto
      body: SafeArea(
          child: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            
            //Imagens do produto
            ImageCarosel(product: product),
            // ItemsInfo(product: product,),
            CustomItemsBody(
              product: product,
              press: () {},
            ),
          ],
        ),
      )),

      //NavBar - barra de navegação inferior
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
