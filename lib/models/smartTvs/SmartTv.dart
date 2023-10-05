//Tela listagem de produtos SmartTvs
import 'package:ladiescode/models/ProductsList.dart';

class TvProduct extends Product {
  TvProduct({
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

  static List<Product> tvProducts = [
    //SmartTv 1
    TvProduct(
      images: ['images/smartTvs/1.png'],
      title:
          'Smart TV 32” HD LED TCL S615 VA 60Hz - Android Wi-Fi e Bluetooth Google Assistente 2 HDMI',
      description:
          'A SMART TV LED 32" TCL HDR 32S615 2 HDMI é um modelo da marca TCL. As 32.0" dessa TV HD possui tecnologia LED e conta com Android. A taxa de atualização dessa TV TCL 32S615 é de 60Hz. Quanto ao áudio, a potência deste aparelho é de 16W. A TCL 32S615 conta com as entradas Fone de Ouvido P2, HDMI, LAN (Rede), USB, HDMI ARC e também tem Bluetooth, Espelhamento de Tela, Wi-Fi integrado.',
      price: 1127.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 112,70',
      rating: 2,
      isFavourite: true,
    ),

    //SmartTv 2
    TvProduct(
      images: ['images/smartTvs/2.png'],
      title: 'Smart TV 32” HD D-LED AOC 32S5135/78G VA - Wi-Fi 3 HDMI 1 USB',
      description:
          'SMART TV AOC 32 LED HD 32S5135/78 ROKU HDMI USB WI-FI é um modelo da marca AOC. As 32.0" dessa TV HD possui tecnologia LED. A taxa de atualização dessa TV 32S5135/78G é de 60Hz. Quanto ao áudio, a potência deste aparelho é de 10W. A 32S5135/78G conta com as entradas de Fone de Ouvido P2, USB, HDMI, RF, Entrada de Vídeo e Wi-Fi.',
      price: 1090.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 109,00',
      rating: 3,
      isFavourite: false,
    ),

    //SmartTv 3
    TvProduct(
      images: ['images/smartTvs/3.png'],
      title:
          'Smart TV 43” 4K LED TCL 43P635 VA Wi-Fi - Bluetooth HDR Google Assistente 3 HDMI 1 USB',
      description:
          'A SMART TV LED 43" TCL 4K HDR 43P635 3 HDMI é um modelo da marca TCL. conta com Google. As 43.0" dessa TV 4K possui tecnologia LED. Os 60Hz de frequência nativa desta TV são responsáveis pela fluidez do vídeo. O som deste aparelho tem a potência de 19W. Esta TV TCL funciona com Wi-Fi integrado e também tem as entradas HDMI 2.1, LAN (Rede), USB.',
      price: 1750.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 175,00',
      rating: 3,
      isFavourite: true,
    ),

    //SmartTv 4
    TvProduct(
      images: ['images/smartTvs/4.png'],
      title: 'Smart TV 32” HD LED Semp R6500 Wi-Fi - 3 HDMI 1 USB',
      description:
          'SMART TV SEMP 32" LED HD ROKU WIFI DUAL BAND 32R6500 é um modelo da marca SEMP. Bivolt, conta com a Roku e comando de voz via dispositivo inteligente compatível. Conta com as entradas Fone de Ouvido P2, HDMI, LAN (Rede), USB, HDMI ARC e também tem Bluetooth, Wi-Fi integrado.',
      price: 1090.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 109,00',
      rating: 3,
      isFavourite: false,
    ),

    //SmartTv 5
    TvProduct(
      images: ['images/smartTvs/5.png'],
      title:
          'Smart TV LG 65” 4K Quantum Dot NanoCell 65QNED80 120Hz FreeSync HDMI 2.1 ThinQ',
      description:
          'SMART TV LG 65” 4K QUANTUM DOT NANOCELL 65QNED80 é um modelo da marca LG. As 65.0" dessa TV HD possui tecnologia LED. Os 120Hz de frequência nativa desta TV são responsáveis pela fluidez do vídeo. O som deste aparelho tem a potência de 40W. Conta com as entradas Fone de Ouvido P2, HDMI, LAN (Rede), USB, HDMI ARC e também tem Bluetooth, Wi-Fi integrado.',
      price: 7030.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 703,00',
      rating: 5,
      isFavourite: false,
    ),

    //SmartTv 6
    TvProduct(
      images: ['images/smartTvs/6.png'],
      title:
          'Smart TV LG 55” 4K NanoCell 55NANO75 Inteligência Artificial AI ThinQ Smart Magic Google Alexa',
      description:
          'SMART TV LG 55” 4K é um modelo da marca LG. As 55.0" dessa TV HD possui tecnologia LED. Os 120Hz de frequência nativa desta TV são responsáveis pela fluidez do vídeo. O som deste aparelho tem a potência de 40W. Conta com as entradas Fone de Ouvido P2, HDMI, LAN (Rede), USB, HDMI ARC e também tem Bluetooth, Wi-Fi integrado.',
      price: 2799.00,
      payments: 'no Pix ou em 10x no Cartão de crédito R\$ 279,90',
      rating: 4,
      isFavourite: true,
    ),
  ];
}
