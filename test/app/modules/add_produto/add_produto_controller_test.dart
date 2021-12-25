import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:hasura_store/app/modules/add_produto/add_produto_controller.dart';
import 'package:hasura_store/app/modules/add_produto/add_produto_module.dart';

void main() {
  initModule(AddProdutoModule());
  AddProdutoController addProduto;

  setUp(() {
    addProduto = AddProdutoModule.to.get<AddProdutoController>();
  });

  group('AddProdutoController Test', () {
    test("First Test", () {
      expect(addProduto, isInstanceOf<AddProdutoController>());
    });
  });
}
