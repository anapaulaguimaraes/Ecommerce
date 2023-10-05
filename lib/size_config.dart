//Conteúdo para responsivo
import 'package:flutter/material.dart';

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static Orientation? orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

//Obter a altura proporcional de acordo com o tamanho da tela
double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeConfig.screenHeight;
//812 é a altura do layout que o designer usa
  return (inputHeight / 812.0) * screenHeight;
}

//Obter a altura proporcional de acordo com o tamanho da tela
double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeConfig.screenWidth;
//375 é a largura do layout que o designer usa
  return (inputWidth / 375.0) * screenWidth;
}
