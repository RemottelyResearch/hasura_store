import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hasura_store/app/modules/add_produto/repositories/add_produto_repository.dart';
import 'package:mockito/mockito.dart';

class MockClient extends Mock implements Dio {}

void main() {
  AddProdutoRepository repository;

  setUp(() {
    repository = AddProdutoRepository(null);
  });

  group('AddProdutoRepository Test', () {
    test("First Test", () {
      expect(repository, isInstanceOf<AddProdutoRepository>());
    });
  });
}
