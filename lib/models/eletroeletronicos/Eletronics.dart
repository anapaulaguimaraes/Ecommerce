//Tela listagem de produtos Eletroeletronicos
import 'package:ladiescode/models/ProductsList.dart';

class EletronicProduct extends Product {
  EletronicProduct({
    required List<String> images,
    required String title,
    required String description,
    required double price,
    required String payments,
    double rating = 0.0,
    bool isFavourite = false,
  }) : super(
          images: images,
          title: title,
          description: description,
          price: price,
          payments: payments,
          rating: rating,
          isFavourite: isFavourite,
        );

  static List<Product> eletronicProducts = [
    //Eletroeletronicos 1
    EletronicProduct(
      images: ['images/eletronics/1.webp'],
      title: 'Babá Eletrônica COMFORT VM85 CONNECT LCD 5.0 Wi-Fi Motorola',
      description:
          'A BABÁ ELETRÔNICA MOTOROLA COMFORT VM85 CONNECT Tem Tela LCD 5.0 com visor colorido, tela LCD 5.0. Conectividade com Alexa e Google Assistant, visualize o seu bebê pelo smartphone e tablet através do aplicativo Motorola. O aparelho tem alcance de até 300 metros, através de Rádio Frequência ou através da tecnologia inovadora com conexão Wi-Fi (Exibição em movimento) e tecnologia sem fio FHSS de 2,4 GHz. Com recurso de comunicação bidirecional, você pode ouvir o seu filho claramente e depois acalmá-lo com sua voz ou até mesmo acionar a função de canções de ninar pré-carregadas com sons naturais e suaves. Produto certificado pela Anatel.',
      price: 1619.10,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 161,91',
      rating: 5,
      isFavourite: false,
    ),

    //Eletroeletronicos 2
    EletronicProduct(
      images: ['images/eletronics/2.webp'],
      title: 'Repelente Eletrônico Ultrassônico - Chicco',
      description:
          'O REPELENTE ELETRÔNICO ULTRASSÔNICO CHICCO é um poderoso contra insetos protegendo o seu bebê de picadas de mosquitos. Tecnologia Ultrassônica. Eco-friendly, não solta nenhum agente químico no meio ambiente. Funciona com pilha alcalina AAA com duração média de 100 horas contínuas. Possui prático clip para uso portátil, onde quer que o bebê esteja.',
      price: 48.90,
      payments: 'no Pix ou no Cartão de crédito R\$ 48,90',
      rating: 3,
      isFavourite: false,
    ),

    //Eletroeletronicos 3
    EletronicProduct(
      images: ['images/eletronics/3.webp'],
      title:
          'Purificador de água Consul CPB34ASVNA Refrigeração Eletrônica com Filtragem Classe A, Branco Bivolt',
      description:
          'PURIFICADOR DE ÁGUA CONSUL CPB34ASVNA. Água natural e gelada com filtragem classe A, Proteção antibactérias. Refrigeração eletrônica, o que deixa a água gelada até nos dias mais quentes, além de ter design moderno e baixo consumo de energia.',
      price: 499.90,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 49,99',
      rating: 4,
      isFavourite: true,
    ),

    //Eletroeletronicos 4
    EletronicProduct(
      images: ['images/eletronics/4.webp'],
      title: 'Cabo Adaptador OTG Tipo-C Usb C Compatível Samsung Pen Drive',
      description:
          'OTG ADAPTADOR TIPO-C MACHO PARA USB FÊMEA é compatível com dispositivos com entrada "TIPO C". Pode ser usado para conectar dispositivos USB ao seu celular. Como Teclado, Mouse, Controle para Jogos com cabo USB, Impressoras e outros dispositivos USB. Suporta carregamento e transferência de dados. Pode ser usado também como adaptador para o seu cabo USB conectar a uma fonte com saída USB-C (Tipo C). OBS: Este adaptador funciona somente em celulares que suportam a função OTG. Verificar antes, se o seu celular é compatível.',
      price: 8.96,
      payments: 'no Pix ou no Cartão de crédito R\$ 8,96',
      rating: 5,
      isFavourite: false,
    ),

    //Eletroeletronicos 5
    EletronicProduct(
      images: ['images/eletronics/5.webp'],
      title:
          'Câmera Baba Eletrônica Visão Noturna sem fio com Microfone 3 Antenas HD - YOUSEE',
      description:
          'CÂMERA SEGURANÇA WIFI IP ROBÔ 3 ANTENAS YOOSEE VISÃO NOTURNA FULL HD 360O MICROFONE ÁUDIO BABÁ ELETRÔNICA BIVOLT, imagem branco e preto, visualize o seu bebê pelo smartphone e tablet independente de exposição a luz. tecnologia inovadora com conexão Wi-Fi.',
      price: 127.90,
      payments: 'no Pix ou em 2x no Cartão de crédito R\$ 63,95',
      rating: 3,
      isFavourite: false,
    ),

    //Eletroeletronicos 6
    EletronicProduct(
      images: ['images/eletronics/6.webp'],
      title:
          'Esteira Eletrônica Dream Fitness Concept 1600 - Dobrável Vel. Máxima 9km/h',
      description:
          'A ESTEIRA DREAM CONCEPT 1.6 oferece uma forma prática e segura de se exercitar sem sair de casa. Ela conta com 6 funções: tempo, velocidade, distância, calorias, batimentos cardíacos (com ear pulse) e tecla scan. Possui ainda 1 programa de velocidade predefinido, para você montar treinos adequados de acordo com suas necessidades e habilidades. Seja para uma caminhada leve ou uma corrida num ritmo constante, a Esteira Dream oferece conforto e segurança para você, com 3 níveis de inclinação que potencializam o exercício. Além disso, o equipamento é dobrável, facilitando o manuseio e também o armazenamento.',
      price: 1599.90,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 159,99',
      rating: 5,
      isFavourite: true,
    ),
  ];
}
