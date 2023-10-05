//Tela listagem de avaliações SmartTv
import 'package:flutter/material.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';

class AvaliationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    //Lista de avaliações
    List<Map<String, dynamic>> reviews = [
      {
        'imagePath': '13.png',
        'personName': 'Bruno Alencar',
        'reviewText':
            'Entrega rápida e produto excelente, amei esse e-commerce.',
        'starRating': 5,
      },
      {
        'imagePath': '14.png',
        'personName': 'Fernanda Pereira',
        'reviewText': 'Gostei do produto, entrega demorou mais que o esperado.',
        'starRating': 3,
      },
      {
        'imagePath': '15.png',
        'personName': 'Renato Almeida',
        'reviewText': 'Amei o produto, pena que não tinha a cor que eu queria.',
        'starRating': 4,
      },
      {
        'imagePath': '16.png',
        'personName': 'Gabriela Souza',
        'reviewText': 'Ótima resolução e bom custo beneficio.',
        'starRating': 4,
      },
      {
        'imagePath': '17.png',
        'personName': 'Ingridi Ferraz',
        'reviewText': 'Amei. Gostei, porém esperava mais agilidade na entrega',
        'starRating': 4,
      },
      {
        'imagePath': '18.png',
        'personName': 'Alberto Oliveira',
        'reviewText': ' Excelente atendimento, gostei do produto.',
        'starRating': 4,
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
                averageRating.toStringAsFixed(
                    1), //Exibir uma média com uma casa decimal
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
