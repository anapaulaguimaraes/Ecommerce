//Tela listagem de avaliações Eletroeletronicos
import 'package:flutter/material.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';

class AvaliationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //Lista de avaliações
    List<Map<String, dynamic>> reviews = [
      {
        'imagePath': '1.png',
        'personName': 'Rodolfo Brito',
        'reviewText':
            'Chegou dentro do prazo e amei o produto! Recebi exatamente o que esperava e a qualidade é ótima. Recomendo muito.',
        'starRating': 5,
      },
      {
        'imagePath': '2.png',
        'personName': 'Jorge Silva',
        'reviewText':
            'Acertei demais na escolha. Demorou um pouco pra chegar mas foi erro meu pois tinha errado meu endereço. Comprarei aqui mais vezes.',
        'starRating': 4,
      },
      {
        'imagePath': '3.png',
        'personName': 'Beatriz Diniz',
        'reviewText':
            'Estou encantada com o atendimento. A única coisa que não gostei foi que não avisaram horário de entrega, então o produto voltou pois não tinha ninguém em casa, mas foi logo resolvido.',
        'starRating': 4,
      },
      {
        'imagePath': '4.png',
        'personName': 'Fernanda Alves',
        'reviewText':
            'Gostei do produto, só a cor que na foto é mais bonita que pessoalmente.',
        'starRating': 5,
      },
      {
        'imagePath': '5.png',
        'personName': 'Ana Moreira',
        'reviewText':
            'Amei. Superou minhas expectativas. O produto é melhor do que eu pensava.',
        'starRating': 4,
      },
      {
        'imagePath': '6.png',
        'personName': 'Pedro Afonso',
        'reviewText':
            'Só tenho elogios a fazer sobre a Ladies.com. Sempre entregam dentro do prazo e atendimento maravilhoso.',
        'starRating': 5,
      },
    ];

    //Calculo da média das avaliações
    double averageRating = 0;
    for (var review in reviews) {
      averageRating += review['starRating'];
    }
    if (reviews.isNotEmpty) {
      averageRating /= reviews.length;
    }

    //Parte superior da tela
    return Scaffold(
      appBar: CustomAppBar(title: 'Avaliações'),

      //Interface da tela de avaliações
      body: Container(
        color: Color(0xFFE7ECF1),
        child: ListView(
          children: [
            buildAverageRating(averageRating),
            for (var review in reviews)
              buildReviewBox(
                review['imagePath'],
                review['personName'],
                review['reviewText'],
                review['starRating'],
              ),
          ],
        ),
      ),
    );
  }

  //Widget que exibe a média das avaliações na tela
  Widget buildAverageRating(double averageRating) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Média de Avaliações:',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            children: [
              Text(
                averageRating
                    .toStringAsFixed(1), //Exibir uma média com uma casa decimal
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              //icone de estrela
              Icon(
                Icons.star,
                color: Color(0xFFB6082F),
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }

  //Exibir uma caixa de avaliação de produto
  Widget buildReviewBox(
      String imagePath, String personName, String reviewText, int starRating) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                imagePath,
                width: 50,
                height: 50,
              ),
              SizedBox(width: 10),
              Text(
                personName,
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            reviewText,
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(height: 10),
          Row(
            children: List.generate(
              starRating,
              (index) => Icon(
                Icons.star,
                color: Color(0xFFB6082F),
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
