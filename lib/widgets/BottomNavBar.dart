//Página home, icones da barra de navegação parte inferior.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ladiescode/size_config.dart';

class HomeBottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      elevation: 1,
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(25)),
      child: Container(
        height: getProportionateScreenHeight(70),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            //Home
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/');
                },
                icon: Icon(
                  Icons.home,
                  color: Color(0xFFB6082F),
                )),

            //Categorias
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'categoriesScreen');
                },
                icon: Icon(
                  CupertinoIcons.list_bullet,
                  color: Color(0xFFB6082F),
                )),

            //Favoritos
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'favouriteScreen');
                },
                icon: Icon(
                  Icons.favorite,
                  color: Color(0xFFB6082F),
                )),

            //Perfil
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'profileScreen');
                },
                icon: Icon(
                  Icons.person,
                  color: Color(0xFFB6082F),
                )),

                //Perfil
            IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, 'apiScreen');
                },
                icon: Icon(
                  Icons.assignment_add,
                  color: Color(0xFFB6082F),
                ))
          ],
        ),
      ),
    );
  }
}
