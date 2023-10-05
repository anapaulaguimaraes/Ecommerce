//Página Categorias
import 'package:flutter/material.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Categorias'),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
