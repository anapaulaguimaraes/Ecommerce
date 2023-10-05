//Página produto, conteúdo de toda a página
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:ladiescode/models/ProductsList.dart';
import 'package:ladiescode/screens/item/ItemScreen.dart';
import 'package:ladiescode/screens/item/components/CustomExpansionPanel.dart';
import 'package:ladiescode/size_config.dart';
import 'package:ladiescode/widgets/ProductCardWidget.dart';

class CustomItemsBody extends StatelessWidget {
  const CustomItemsBody({
    super.key,
    required this.product,
    required this.press,
  });

  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Container(
      margin: EdgeInsets.only(
          right: getProportionateScreenWidth(15),
          left: getProportionateScreenWidth(15),
          top: getProportionateScreenHeight(15)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              
              //Título do produto
              SizedBox(
                width: screenWidth * 0.6,
                height: screenHeight * 0.07,
                child: Text(
                  product.title,
                  maxLines: 3,
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),

              //Nota da avaliação
              Container(
                height: screenHeight * 0.07,
                alignment: Alignment.topRight,
                child: RatingBarIndicator(
                  rating: product.rating,
                  itemBuilder: (context, index) => Icon(
                    Icons.star,
                    color: Color(0xFFB6082F),
                  ),
                  itemCount: 5,
                  itemSize: 20,
                  direction: Axis.horizontal,
                ),
              ),
            ],
          ),

          //Preço do produto
          Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(8)),
            width: double.infinity,
            child: Text(
              'R\$ ${product.price.toStringAsFixed(2)}',
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          //Formas de pagamento
          Container(
              margin: EdgeInsets.only(
                  top: getProportionateScreenHeight(8),
                  bottom: getProportionateScreenHeight(15)),
              width: double.infinity,
              child: Text(
                product.payments,
                style: TextStyle(fontSize: 14),
              )),

          //Botão de adicionar ao carrinho
          TextButton.icon(
              onPressed: () {},
              icon: Icon(CupertinoIcons.cart),
              label: Text(
                'Adicionar ao carrinho',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xFFB6082F),
                  foregroundColor: Colors.white,
                  textStyle: TextStyle(fontWeight: FontWeight.bold),
                  fixedSize:
                      Size(screenWidth, getProportionateScreenHeight(53)))),

          SizedBox(
            height: getProportionateScreenHeight(10),
          ),

          //Botão para página de avaliação do produto
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, 'avaliationScreen');
            },
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: getProportionateScreenWidth(20)),
              height: getProportionateScreenHeight(53),
              width: screenWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Avaliação do produto',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Color(0xFFB6082F),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: getProportionateScreenHeight(10),
          ),

          //Botão para expandir a decrição do produto
          CustomExpansionPanel(
            product: product,
          ),

          Container(
            margin: EdgeInsets.only(top: getProportionateScreenHeight(20)),
            width: double.infinity,
            child: Text(
              'Recomendados',
              textAlign: TextAlign.left,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),

          GridView.count(
            childAspectRatio: 0.68,
            physics: BouncingScrollPhysics(),
            crossAxisCount: 2,
            shrinkWrap: true,
            children: [
              //Gerar lista de todos os produtos
              ...List.generate(
                allProducts.length,
                (index) => ProductCard(
                  product: allProducts[index],
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ItemScreen(
                                  product: allProducts[index],
                                )));
                  },
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
