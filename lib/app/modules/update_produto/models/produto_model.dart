import 'dart:convert';

class UserModel {
  final String id;
  final String nome;
  final double valor;
  final TipoOuCategoriaDto tipoProduto;
  final TipoOuCategoriaDto categoriaProduto;

  UserModel({
    this.id,
    this.nome,
    this.valor,
    this.tipoProduto,
    this.categoriaProduto,
  });

  UserModel copyWith({
    String id,
    String nome,
    int valor,
    TipoOuCategoriaDto tipoProduto,
    TipoOuCategoriaDto categoriaProduto,
  }) =>
      UserModel(
        id: id ?? this.id,
        nome: nome ?? this.nome,
        valor: valor ?? this.valor,
        tipoProduto: tipoProduto ?? this.tipoProduto,
        categoriaProduto: categoriaProduto ?? this.categoriaProduto,
      );

  factory UserModel.fromJson(String str) =>
      UserModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
        id: json["id"],
        nome: json["nome"],
        valor: json["valor"].toDouble(),
        tipoProduto: TipoOuCategoriaDto.fromMap(
          json["tipo_produto"]?.cast<String, dynamic>(),
        ),
        categoriaProduto: TipoOuCategoriaDto.fromMap(
          json["categoria_produto"]?.cast<String, dynamic>(),
        ),
      );

  Map<String, dynamic> toMap() => {
        "id": id,
        "nome": nome,
        "valor": valor,
        "tipo_produto": tipoProduto.toMap(),
        "categoria_produto": categoriaProduto.toMap(),
      };

  static List<UserModel> fromJsonList(List list) {
    if (list == null) return null;
    return list
        .map((item) => item.cast<String, dynamic>())
        .map<UserModel>((item) => UserModel.fromMap(item))
        .toList();
  }
}

class TipoOuCategoriaDto {
  final String descricao;

  TipoOuCategoriaDto({
    this.descricao,
  });

  TipoOuCategoriaDto copyWith({
    String descricao,
  }) =>
      TipoOuCategoriaDto(
        descricao: descricao ?? this.descricao,
      );

  factory TipoOuCategoriaDto.fromJson(String str) =>
      TipoOuCategoriaDto.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory TipoOuCategoriaDto.fromMap(Map<String, dynamic> json) =>
      TipoOuCategoriaDto(
        descricao: json["descricao"],
      );

  Map<String, dynamic> toMap() => {
        "descricao": descricao,
      };
}
