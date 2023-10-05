//Model da classe dos dados recebidos e enviados para API, responsável por trasnsformar os dados json em objetos dart ou objetos dart em json.

class ProdutosModel {
    int id;
    String title;
    String description;
    double price;
    String payments;
   

    ProdutosModel({
        required this.id,
        required this.title,
        required this.description,
        required this.price,
        required this.payments,
        
    });

    factory ProdutosModel.fromJson(Map<String, dynamic> json) => ProdutosModel(
        id: json["id"],
        title: json["title"],
        description: json["description"],
        price: json["price"]?.toDouble(),
        payments: json["payments"],
        
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "title": title,
        "description": description,
        "price": price,
        "payments": payments,
        
    };
}
