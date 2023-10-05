//Tela listagem de produtos Smartphones
import 'package:ladiescode/models/ProductsList.dart';

class SmartphoneProducts extends Product {
  SmartphoneProducts({
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

  static List<Product> smartphoneProducts = [
    //Smartphones 1
    SmartphoneProducts(
      images: ['images/smartphones/1.webp'],
      title: 'Smartphone Xiaomi Note 12S 256GB - 8GB Ram',
      description:
          'NOTE 12 S. A Xiaomi traz no Smartphone Xiaomi Redmi Note 12S 8GB Ram 256GB Câmera Tripla o sistema operacional Android. A tela de tecnologia AMOLED conta com 6.43" em resolução Full HD+. O smartphone possui uma câmera frontal de 16.0 MP e um conjunto de câmeras na parte de trás, cada uma com 108.0 + 8.0 + 2.0 MP. Esse smartphone conta com uma câmera traseira que grava vídeos em Full HD, além de conter as tecnologias Câmera Tripla, Flash, HDR. Este Redmi possui uma bateria com capacidade de 5000mAh. Este Redmi é equipado com o processador Mediatek Helio G96, que tem capacidade de 2.0GHz, 2.05GHz de processamento. Este modelo de celular tem uma memória RAM de 8.0GB.',
      price: 1620.90,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 162,09',
      rating: 2,
      isFavourite: true,
    ),

    //Smartphones 2
    SmartphoneProducts(
      images: ['images/smartphones/2.webp'],
      title: 'Smartphone Xiaomi Redmi Note 12 128GB - 4GB Ram',
      description:
          'NOTE 12.  A Xiaomi traz seu modelo, o Smartphone Xiaomi Redmi Note 12 4GB RAM 128GB Câmera Tripla. Contando com o sistema operacional Android, tem tela AMOLED de 6.67", e resolução Full HD+. Com 16.56cm de altura e 7.59cm de largura e com peso de 183.5g, o modelo pode ser uma pedida para você. O celular oferece uma câmera de selfie de 13.0 MP e câmeras traseiras de 50.0 + 8.0 + 2.0 MP. Esse smartphone conta com uma câmera traseira que grava vídeos em Full HD, além de conter as tecnologias Autofoco, Câmera Tripla, Flash, HDR. Este Redmi possui uma bateria com capacidade de 5000mAh. Com o processador Qualcomm Snapdragon 685, este Xiaomi alcança até 1.9GHz, 2.8GHz de capacidade de processamento. Este modelo de celular tem uma memória RAM de 4.0GB.',
      price: 1380.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 138,00',
      rating: 3,
      isFavourite: false,
    ),

    //Smartphones 3
    SmartphoneProducts(
      images: ['images/smartphones/3.webp'],
      title: 'XIAOMI REDMI 12C 128GB - 6GB RAM.',
      description:
          'Conta com sistema operacional Android e é um modelo da Xiaomi. A tela de tecnologia IPS LCD conta com 6.71". O aparelho apresenta 16.8 cm de altura e 7.64cm de largura, com peso de 192.0g. O aparelho dispõe de câmera frontal de 5.0 MP, e traseiras de 50.0 + 1.8 + 2.0 MP. A câmera traseira deste Redmi 12C filma em resolução HD. A bateria do Smartphone Redmi 12C possui capacidade de 5000mAh. Equipado com o processador MediaTek Helio G85, ele tem uma capacidade de 2.0GHz, 1.8GHzde processamento. Este modelo de celular tem uma memória RAM de 6.0GB.',
      price: 1999.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 199,90',
      rating: 3,
      isFavourite: true,
    ),

    //Smartphones 4
    SmartphoneProducts(
      images: ['images/smartphones/4.webp'],
      title: 'Smartphone Xiaomi Redmi Note 12 128GB - 4GB Ram',
      description:
          'A Xiaomi traz seu modelo, o Smartphone Xiaomi Redmi Note 12 4GB RAM 128GB Câmera Tripla. Contando com o sistema operacional Android, tem tela AMOLED de 6.67", e resolução Full HD+. Com 16.56cm de altura e 7.59cm de largura e com peso de 183.5g, o modelo pode ser uma pedida para você. O celular oferece uma câmera de selfie de 13.0 MP e câmeras traseiras de 50.0 + 8.0 + 2.0 MP. Esse smartphone conta com uma câmera traseira que grava vídeos em Full HD, além de conter as tecnologias Autofoco, Câmera Tripla, Flash, HDR. Este Redmi possui uma bateria com capacidade de 5000mAh. Com o processador Qualcomm Snapdragon 685, este Xiaomi alcança até 1.9GHz, 2.8GHz de capacidade de processamento. Este modelo de celular tem uma memória RAM de 4.0GB.',
      price: 1380.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 138,00',
      rating: 3,
      isFavourite: false,
    ),

    //Smartphones 5
    SmartphoneProducts(
      images: ['images/smartphones/5.webp'],
      title: 'Smartphone Xiaomi Pocophone Poco X5 5G 128GB 6gb Ram',
      description:
          'O SMARTPHONE XIAOMI POCOPHONE POCO X5 PRO 5G 6GB RAM 6 GB 128GB QUALCOMM ADRENO 642L 2 CHIPS ANDROID 13 conta com sistema operacional Android e é um modelo da Xiaomi. A tela de tecnologia AMOLED conta com 6.67" em resolução Full HD+. O aparelho apresenta 16.29cm de altura e 7.6cm de largura, com peso de 181.0g. O aparelho dispõe de câmera frontal de 16.0 MP, e traseiras de 108.0 + 8.0 + 2.0 MP. A câmera traseira deste Pocophone filma em resolução 4K, além de ser equipado com as tecnologias HDR. A bateria do Smartphone Xiaomi Pocophone Poco X5 Pro 5G 6GB RAM 6 GB 128GB Qualcomm Adreno 642L 2 Chips Android 13 possui capacidade de 5000mAh. Equipado com o processador Qualcomm Adreno 642L, ele tem uma capacidade de 2.4GHz, 2.2GHz, 1.8GHz de processamento. Este modelo de celular tem uma memória RAM de 6.0GB.',
      price: 1800.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 180,00',
      rating: 5,
      isFavourite: false,
    ),

    //Smartphones 6
    SmartphoneProducts(
      images: ['images/smartphones/6.webp'],
      title: 'Smartphone Xiaomi Redmi 12C 128GB - 6GB Ram',
      description:
          'Conta com sistema operacional Android e é um modelo da Xiaomi. A tela de tecnologia IPS LCD conta com 6.71". O aparelho apresenta 16.8 cm de altura e 7.64cm de largura, com peso de 192.0g. O aparelho dispõe de câmera frontal de 5.0 MP, e traseiras de 50.0 + 1.8 + 2.0 MP. A câmera traseira deste Redmi 12C filma em resolução HD. A bateria do Smartphone Redmi 12C possui capacidade de 5000mAh. Equipado com o processador MediaTek Helio G85, ele tem uma capacidade de 2.0GHz, 1.8GHzde processamento. Este modelo de celular tem uma memória RAM de 6.0GB.',
      price: 1099.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 109,90',
      rating: 4,
      isFavourite: true,
    ),
  ];
}
