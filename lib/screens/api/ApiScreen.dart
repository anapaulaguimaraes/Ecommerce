//Página Consumo API
import 'package:flutter/material.dart';
import 'package:ladiescode/size_config.dart';
import 'package:ladiescode/widgets/BottomNavBar.dart';
import 'package:ladiescode/screens/api/ApiRequisicoes.dart';
import 'package:ladiescode/models/ProdutosModel.dart';
import 'package:ladiescode/screens/api/AlterarProduto.dart';
import 'package:ladiescode/screens/api/CadastrarProduto.dart';

class ApiScreen extends StatefulWidget {
  const ApiScreen({super.key});

  @override
  State<ApiScreen> createState() => _ApiScreenState();
}

class _ApiScreenState extends State<ApiScreen> {
  Api api = Api();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios),
          color: Color(0xFFB6082F),
          padding: EdgeInsets.only(left: getProportionateScreenWidth(15)),
        ),
        title: Text(
          "Consumo API",
          style: TextStyle(
            color: Color(0xFFB6082F),
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CadastrarProduto()),
              );
            },
            icon: Icon(
              Icons.post_add,
              color: Color(0xFFB6082F),
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8.0),
        child: FutureBuilder<List<ProdutosModel>>(
          future: api.getAllProdutos(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }

            if (snapshot.connectionState == ConnectionState.done) {
              List<ProdutosModel> list = snapshot.data ?? [];
              return ListView.builder(
                itemCount: list.length,
                itemBuilder: (context, index) => ListTile(
                  leading: const Icon(Icons.add_photo_alternate_outlined),
                  trailing: IconButton(
                    onPressed: () {
                      deletePost(list[index].id);
                    },
                    icon: const Icon(Icons.delete),
                  ),
                  title: Text(list[index].title),
                  subtitle: Text(
                  "R\$ ${list[index].price.toStringAsFixed(2)}",
                    maxLines: 1,
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => AlterarProduto(produto: list[index]),
                      ),
                    );
                  },
                ),
              );
            }

            return const Center(child: Text("Erro nos dados"));
          },
        ),
      ),
      bottomNavigationBar:
          HomeBottomNavBar(), // Adicione o bottomNavigationBar aqui
    );
  }

  void deletePost(int id) async {
    bool valor = await api.deletarProdutos(id);

    if (valor) {
      showSnackBar("Produto deletado!");
    } else {
      showSnackBar("Falha ao deletar Produto!");
    }
  }

  void showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
