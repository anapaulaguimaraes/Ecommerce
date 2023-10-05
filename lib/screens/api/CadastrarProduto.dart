//Página cadastrar produtos consumo API
import 'package:ladiescode/screens/api/ApiRequisicoes.dart';
import 'package:ladiescode/models/ProdutosModel.dart';
import 'package:flutter/material.dart';
import 'package:ladiescode/size_config.dart';

class CadastrarProduto extends StatefulWidget {
  const CadastrarProduto({super.key});

  @override
  State<CadastrarProduto> createState() => _CadastrarProdutoState();
}

class _CadastrarProdutoState extends State<CadastrarProduto> {
  Api api = Api();
  String title = "";
  String description = "";
  double price = 0;
  String payments = "";
  int id = 0;

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
          "Cadastrar Produtos",
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
              color: Color(0xFFB6082F), // Cor desejada para o ícone
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        child: Column(
          children: [

            TextField(
              decoration: const InputDecoration(label: Text("Título")),
              onChanged: (valor) => title = valor,
            ),

            TextField(
              decoration: const InputDecoration(label: Text("Preço")),
              onChanged: (valor) {
                setState(() {
                  price = double.tryParse(valor) ?? 0;
                });
              },
            ),

            TextField(
              decoration:
                  const InputDecoration(label: Text("Formas de Pagamento")),
              onChanged: (valor) => payments = valor,
            ),

            TextField(
              decoration:
                  const InputDecoration(label: Text("Descrição do Produto")),
              maxLines: 5,
              onChanged: (valor) => description = valor,
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  salvarPost();
                },
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Color(0xFFB6082F)),
                ),
                child: const Text(
                  "Cadastrar Produto",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void salvarPost() async {
    bool valor = await api.cadastrarProdutos(ProdutosModel(
        title: title,
        description: description,
        price: price,
        payments: payments,
        id: id,
        ));

    if (valor) {
      showSnackBar("Produto Cadastrado!");
    } else {
      showSnackBar("Falha ao Cadastrar Produto!");
    }
  }

  void showSnackBar(String msg) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }
}
