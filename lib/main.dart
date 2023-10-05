import 'package:flutter/material.dart';
import 'package:ladiescode/screens/avaliacao/smartTvs/SmartTv.dart';
import 'package:ladiescode/screens/categorias/CategoriesEletronics.dart';
import 'package:ladiescode/screens/categorias/CategoriesScreen.dart';
import 'package:ladiescode/screens/categorias/CategoriesSmartphone.dart';
import 'package:ladiescode/screens/categorias/CategoriesSmatTv.dart';
import 'package:ladiescode/screens/favoritos/FavouritesScreen.dart';
import 'package:ladiescode/screens/home/HomeScreen.dart';
import 'package:ladiescode/screens/profile/ProfileScreen.dart';
import 'package:ladiescode/screens/api/ApiScreen.dart';
import 'package:ladiescode/size_config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ladies.com',
      theme: ThemeData(
          fontFamily: 'Inter',
          scaffoldBackgroundColor: Color(0xFFF1F1F1),
          textTheme: TextTheme(
            bodySmall: TextStyle(color: Color(0xFF201A1A)),
            bodyMedium: TextStyle(color: Color(0xFF201A1A)),
            bodyLarge: TextStyle(color: Color(0xFF201A1A)),
          )),

      //Rotas das páginas
      routes: {
        '/': (context) => HomeScreen(),
        'categoriesScreen': (context) => CategoriesScreen(),
        'favouriteScreen': (context) => FavouriteScreen(),
        'profileScreen': (context) => ProfileScreen(),
        'avaliationScreen': (context) => AvaliationScreen(),
        'apiScreen': (context) => ApiScreen(),

        //Rotas para listar as categorias de produtos
        'tvCatScreen': (context) => TvCatScreen(),
        'smartphoneCatScreen': (context) => SmartphoneCatScreen(),
        'eletronicsCatScreen': (context) => EletronicCatScreen(),
      },
    );
  }
}
