//Página perfil do usuario
import 'package:flutter/material.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/widgets/CustomAppBar.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(title: 'Perfil'),
      bottomNavigationBar: HomeBottomNavBar(),
    );
  }
}
