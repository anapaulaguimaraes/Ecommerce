//Criar todas as  requisições da API

import 'dart:convert';

import 'package:ladiescode/models/ProdutosModel.dart';
import 'package:http/http.dart' as http;

const url = "http://localhost:3000/produtos";

class Api {
  
  //Método GET
  Future<List<ProdutosModel>> getAllProdutos() async {
    try {
      http.Response response = await http.get(Uri.parse(url));

      //Verificar status da requisição
      if (response.statusCode == 200) {
        var json = jsonDecode(utf8.decode(response.bodyBytes));

        List<ProdutosModel> list = [];
        for (var n in json) {
          list.add(ProdutosModel.fromJson(n));
        }
        return list;
      } else {
        print("getAllProdutos: StatusCode ${response.statusCode}");
        return [];
      }
    } catch (e) {
      print("getAllProdutos: StatusCode ${e.toString()}");
      return [];
    }
  }

  //Método POST
  Future<bool> cadastrarProdutos(ProdutosModel produtos) async {
    try {
      http.Response response = await http.post(Uri.parse(url),
          headers: {'Content-type': 'application/json; charset=UTF-8'},
          body: utf8.encode(jsonEncode(produtos.toJson())));
      
      //Verificar status da requisição
      if (response.statusCode == 201) {
        print("cadastrarProdutos: StatusCode ${response.statusCode}");
        print("cadastrarProdutos: body ${response.body}");
        return true;
      } else {
        print("cadastrarProdutos: StatusCode ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("cadastrarProdutos: StatusCode ${e.toString()}");
      return false;
    }
  }

  //Método PUT
  Future<bool> alterarProdutos(ProdutosModel produtos) async {
    try {
      http.Response response = await http.put(Uri.parse("$url/${produtos.id}"),
          headers: {'Content-type': 'application/json; charset=UTF-8'},
          body: utf8.encode(jsonEncode(produtos.toJson())));
      
      //Verificar status da requisição
      if (response.statusCode == 200) {
        print("alterarProdutos: StatusCode ${response.statusCode}");
        print("alterarProdutos: body ${response.body}");
        return true;
      } else {
        print("alterarProdutos: StatusCode ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("alterarProdutos: StatusCode ${e.toString()}");
      return false;
    }
  }

  //Método DELETE
  Future<bool> deletarProdutos(int id) async {
    try {
      http.Response response = await http.delete(
        Uri.parse("$url/$id"),
      );
      
      //Verificar status da requisição
      if (response.statusCode == 200) {
        print("deletarProdutos: StatusCode ${response.statusCode}");
        print("deletarProdutos: body ${response.body}");
        return true;
      } else {
        print("deletarProdutos: StatusCode ${response.statusCode}");
        return false;
      }
    } catch (e) {
      print("deletarProdutos: StatusCode ${e.toString()}");
      return false;
    }
  }
}