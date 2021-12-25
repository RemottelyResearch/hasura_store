import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/home/home_module.dart';
import 'package:hasura_store/app/modules/home/widgets/card_produto/card_produto_controller.dart';

void main() {
  initModule(HomeModule());
  CardProdutoController cardproduto;

  setUp(() {
    cardproduto = HomeModule.to.get<CardProdutoController>();
  });

  group('CardProdutoController Test', () {
    test("First Test", () {
      expect(cardproduto, isInstanceOf<CardProdutoController>());
    });
  });
}
