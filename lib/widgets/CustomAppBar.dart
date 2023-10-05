//Layout das páginas
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ladiescode/size_config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
    required this.title,
  });

  final title;

  @override
  Size get preferredSize => Size.fromHeight(getProportionateScreenHeight(50));

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 1,
      leading: IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.arrow_back_ios),
        color: Color(0xFFB6082F),
        padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
      ),
      title: Text(
        title,
        style: TextStyle(color: Color(0xFFB6082F), fontWeight: FontWeight.bold),
      ),
      actions: [
        IconButton(
            onPressed: () {},
            icon: Icon(CupertinoIcons.cart),
            padding: EdgeInsets.only(right: getProportionateScreenWidth(15)),
            color: Color(0xFFB6082F))
      ],
    );
  }
}
