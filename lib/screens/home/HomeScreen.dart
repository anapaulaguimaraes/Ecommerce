//Página home, conteúdo da listagem das catedorias e todos os produtos, abaixo da logo e barra de buscar.
import 'package:flutter/material.dart';
import 'package:ladiescode/screens/home/components/body.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/screens/home/components/HomeAppBar.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF1F1F1),
      appBar: HomeAppBar(),
      
      //Lista o conteúdo das categorias e todos os produtos
      body: Body(),

      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
