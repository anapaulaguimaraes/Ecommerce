//Modelo de cards que aparecem na lista de produtos
import 'package:flutter/material.dart';
import 'package:ladiescode/models/ProductsList.dart';
import 'package:ladiescode/size_config.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    this.width = 150,
    this.aspectRatio = 1.2,
    required this.product,
    required this.press,
  });

  final double width, aspectRatio;
  final Product product;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    
    //Permite clicks no container
    return GestureDetector(
      onTap: press,
      child: Container(
        padding: EdgeInsets.only(
            left: getProportionateScreenWidth(15),
            right: getProportionateScreenWidth(15),
            top: getProportionateScreenHeight(15)),
        margin: EdgeInsets.symmetric(
            vertical: getProportionateScreenHeight(8),
            horizontal: getProportionateScreenWidth(10)),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        child: Column(
          children: [
            
            //Ícone favorito
            Container(
              alignment: Alignment.topRight,
              child: InkWell(
                borderRadius: BorderRadius.circular(20),
                onTap: () {},
                child: Container(
                  width: getProportionateScreenWidth(20),
                  height: getProportionateScreenHeight(20),
                  decoration: BoxDecoration(
                      color: product.isFavourite
                          ? Color(0xFFFFEEED) //true
                          : Color(0xFFF4F4F4), //false
                      shape: BoxShape.circle),
                  child: Icon(
                    product.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    size: 15,
                    color: product.isFavourite
                        ? Color(0xFFFF5261) //true
                        : Color(0xFF201A1A), //false
                  ),
                ),
              ),
            ),

            //Imagem do produto
            SizedBox(
              width: getProportionateScreenWidth(width),
              child: AspectRatio(
                aspectRatio: aspectRatio,
                child: Image.asset(product.images[0]),
              ),
            ),

            //Título do produto
            Container(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
              alignment: Alignment.centerLeft,
              child: Text(
                product.title,
                style: TextStyle(fontSize: 12, color: Color(0xFF201A1A)),
                maxLines: 2,
              ),
            ),

            //Preço do produto
            Container(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(3)),
              alignment: Alignment.centerLeft,
              child: Text(
                'R\$ ${product.price.toStringAsFixed(2)}',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF201A1A)),
              ),
            ),

            //Formas de Pagamento do produto
            Container(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
              alignment: Alignment.centerLeft,
              child: Text(
                product.payments,
                style: TextStyle(fontSize: 10, color: Color(0xFF201A1A)),
                maxLines: 2,
              ),
            ),

            //Avaliações dos produtos
            Container(
              padding: EdgeInsets.only(bottom: getProportionateScreenHeight(5)),
              alignment: Alignment.centerLeft,
              child: RatingBarIndicator(
                rating: product.rating,
                itemBuilder: (context, index) => Icon(
                  Icons.star,
                  color: Color(0xFFB6082F),
                ),
                itemCount: 5,
                itemSize: 12,
                direction: Axis.horizontal,
              ),
            )
          ],
        ),
      ),
    );
  }
}
