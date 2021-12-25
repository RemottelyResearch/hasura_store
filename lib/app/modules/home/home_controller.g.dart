part of 'home_controller.dart';

mixin _$HomeController on _HomeBase, Store {
  Computed<ObservableStream<List<ProdutoModel>>> _$listaProdutosComputed;

  @override
  ObservableStream<List<ProdutoModel>> get listaProdutos =>
      (_$listaProdutosComputed ??=
              Computed<ObservableStream<List<ProdutoModel>>>(
                  () => super.listaProdutos,
                  name: '_HomeBase.listaProdutos'))
          .value;

  final _$snapshotAtom = Atom(name: '_HomeBase.snapshot');

  @override
  Snapshot<List<ProdutoModel>> get snapshot {
    _$snapshotAtom.reportRead();
    return super.snapshot;
  }

  @override
  set snapshot(Snapshot<List<ProdutoModel>> value) {
    _$snapshotAtom.reportWrite(value, super.snapshot, () {
      super.snapshot = value;
    });
  }

  @override
  String toString() {
    return '''
snapshot: ${snapshot},
listaProdutos: ${listaProdutos}
    ''';
  }
}
